import 'package:astro_tak/app/common/util/exports.dart';
import 'package:astro_tak/app/models/astrologer/astrologer_data.dart';
import 'package:astro_tak/app/modules/widgets/custom_elevated_icon_button.dart';
import 'package:astro_tak/app/modules/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';

class AstrologerWidget extends StatelessWidget {
  final AstrologerData data;
  final VoidCallback onCallTap;

  const AstrologerWidget({
    Key? key,
    required this.data,
    required this.onCallTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageWidget(
          imageUrl: data.profliePicUrl ??
              data.images?.small?.imageUrl ??
              data.images?.medium?.imageUrl ??
              data.images?.small?.imageUrl,
          size: const Size(100, 100),
        ),
        15.widthBox,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${data.firstName ?? ''} ${data.lastName ?? ''}',
                style: AppTextStyle.boldStyle.copyWith(
                  fontSize: Dimens.fontSize18,
                ),
              ),
              10.heightBox,
              Text(
                data.skills?.map((e) => e.name ?? '').join(', ') ?? '',
                style: AppTextStyle.regularStyle.copyWith(
                  fontSize: Dimens.fontSize16,
                  color: AppColors.silverChalice,
                ),
              ),
              10.heightBox,
              Text(
                data.languages?.map((e) => e.name ?? '').join(', ') ?? '',
                style: AppTextStyle.regularStyle.copyWith(
                  fontSize: Dimens.fontSize16,
                  color: AppColors.silverChalice,
                ),
              ),
              10.heightBox,
              Text(
                '₹${data.minimumCallDurationCharges?.toInt() ?? 0}/ ${Strings.min}',
                style: AppTextStyle.boldStyle.copyWith(
                  fontSize: Dimens.fontSize16,
                ),
              ),
              30.heightBox,
              CustomElevatedIconButton(
                buttonWidth: 175.w,
                title: Strings.takeOnCall,
                onPressed: onCallTap,
                icon: const Icon(
                  Icons.phone_outlined,
                ),
              ),
            ],
          ),
        ),
        20.widthBox,
        Text(
          '${data.experience?.toInt() ?? 0} ${Strings.years}',
          style: AppTextStyle.regularStyle.copyWith(
            fontSize: Dimens.fontSize16,
            color: AppColors.silverChalice,
          ),
        ),
      ],
    );
  }
}
