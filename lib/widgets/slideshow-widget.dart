 
 import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SlideShowWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    List<String> mango = new List<String>();
    mango.add("https://i.ytimg.com/vi/SCNCDTc2JGI/hqdefault.jpg");
    mango.add("https://i.pinimg.com/originals/0e/c2/26/0ec22686ceea730d34d2d9ca6e22118e.jpg");
    mango.add("https://live.staticflickr.com/7565/15958309016_86fa9d0c39_z.jpg");
    mango.add("https://i.pinimg.com/originals/85/be/f0/85bef0a63cf9f503145e835628b1793f.jpg");


    return SizedBox(
        width: double.infinity,
        height: 300,
        child: Swiper(
          itemCount: mango.length,
          autoplay: false,
          viewportFraction: 0.70,
          itemBuilder: (BuildContext context, int index) {

            String man = mango.elementAt(index);

            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Hero(
                      tag: '$index',
                      child: Image.network(man,fit: BoxFit.cover),
                    )),
              ),
            );
          },
        ));

  }

}
 
