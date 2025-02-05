import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../configs/themes/color_palette.dart';
import '../../../../core/resources/icons/app_icons.dart';
import '../../../../core/strings/app_strings.dart';
import '../../../../core/utils/app_values.dart';
import '../../../auth/data/datas.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        toolbarHeight: AppValues.s70,
        titleSpacing: 0,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: SvgPicture.asset(
        //     AppIcons.angleCircleLeft,
        //     color: AppColors.grey,
        //   ),
        // ),
        title: ListTile(
          minLeadingWidth: 0,
          minVerticalPadding: 0,
          horizontalTitleGap: 10,
          titleAlignment: ListTileTitleAlignment.center,
          contentPadding: const EdgeInsets.all(0),
          leading: Container(
            width: AppValues.s40,
            height: AppValues.s40,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(AppValues.s5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppValues.s5),
              child: CachedNetworkImage(
                imageUrl: datas.elementAt(0).profileImage,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit
                    .cover, // Para garantir que a imagem preencha o contêiner
              ),
            ),
          ),
          title: Text(
            datas.elementAt(0).displayName,
            style: const TextStyle(
              fontSize: AppValues.s16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text(
            AppStrings.online,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.success,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.phoneFlip,
              width: AppValues.s16,
              color: AppColors.grey,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
                DateChip(
                  date: new DateTime(now.year, now.month, now.day - 2),
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: true,
                  color: Color(0xFFE8E8EE),
                  textStyle: TextStyle(color: AppColors.mainColor),
                  tail: true,
                  sent: true,
                ),
                BubbleNormal(
                  text: 'bubble normal with tail',
                  isSender: false,
                  color: AppColors.primaryColor,
                  textStyle: TextStyle(color: Colors.white),
                  tail: true,
                  sent: true,
                ),
              ],
            ),
          )),
          MessageBar(
            onSend: (_) => print(_),
            sendButtonColor: AppColors.secondColor,
            messageBarHitText: "Aa",
            actions: [
              InkWell(
                child: const Icon(
                  Icons.mic,
                  color: AppColors.grey,
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: const Icon(
                    Icons.emoji_emotions,
                    color: AppColors.grey,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
