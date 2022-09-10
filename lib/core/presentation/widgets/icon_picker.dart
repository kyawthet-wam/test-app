import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:testapp/core/presentation/theming/custom_colors.dart';
import 'package:testapp/course/shared/providers.dart';

class IconPicker extends ConsumerWidget {
  const IconPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _pickIcon() async {
      IconData? icon = await FlutterIconPicker.showIconPicker(
        context,
        iconPackModes: [
          IconPack.material,
        ],
        adaptiveDialog: true,
      );

      ref.read(iconProvider.notifier).state = Icon(
        icon,
        color: CustomColors.darkBlue,
        size: 66,
      );

      ref
          .read(courseStateProvider.notifier)
          .setIcon(icon!.codePoint.toString());

      debugPrint('Picked Icon:  $icon');
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Icon",
          style: TextStyle(
              color: CustomColors.darkBlue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        DottedBorder(
          dashPattern: const [4, 4, 4, 4],
          borderType: BorderType.RRect,
          color: CustomColors.brandColorGrey,
          strokeWidth: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: ref.watch(iconProvider) ?? Container(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, right: 16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () => _pickIcon(),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 24),
                        decoration: const BoxDecoration(
                          color: CustomColors.bgWhite,
                        ),
                        child: Text(
                          "Pick",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: CustomColors.darkBlue,
                                  ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
