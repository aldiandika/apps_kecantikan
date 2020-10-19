import 'package:apps_kecantikan/data/article_dummy.dart';
import 'package:flutter/material.dart';

class ArticleShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "Merawat Kulit Berminyak dengan 10 Cara ini",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: 'by',
                style: TextStyle(fontSize: 12, color: Color(0xffB6AAAA)),
                children: [
                  TextSpan(
                    text: ' dr. Santi Mardika',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Tanggal 19 Oktober 2001",
              style: TextStyle(fontSize: 12.0, color: Color(0xffB6AAAA)),
            ),
            Image.asset(
              ArticleDummy.dummy[0]["photo"],
              width: double.infinity,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 20),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis euismod, tortor nec posuere feugiat, elit nunc viverra libero, nec maximus ante nunc quis tortor. Sed neque eros, sollicitudin at porta nec, auctor eu dolor. Integer bibendum efficitur mauris, rhoncus consectetur nunc posuere sit amet. Cras pulvinar blandit nisl eu mollis. Vivamus in sapien fringilla, tincidunt velit pellentesque, finibus nunc. Nunc mattis purus in risus eleifend pellentesque. Quisque posuere facilisis diam, a dignissim odio. Praesent consectetur dui in diam luctus, non rhoncus magna cursus. Fusce eget tempus dui. Aenean quis sem quis arcu pellentesque fringilla. Duis pellentesque vel sapien nec luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer finibus dolor nisl, sed egestas metus fringilla sed.Mauris semper facilisis dictum. Maecenas at lorem in massa suscipit viverra. Morbi sit amet erat nisl. Maecenas imperdiet metus id aliquet varius. Aliquam pellentesque leo eu felis sollicitudin blandit. Quisque sit amet aliquam ligula, in fringilla dui. Cras id posuere libero. Duis condimentum neque quis augue semper, vel convallis arcu sollicitudin. Integer sit amet nunc vitae mauris rutrum aliquam.Aenean non sapien tincidunt nibh euismod accumsan interdum vel ligula. Ut gravida pharetra dignissim. Cras sed justo vel sapien cursus aliquet. Praesent ut lectus pellentesque, pharetra metus porttitor, efficitur mi. Nam vitae justo at ex aliquam pharetra nec ac purus. Duis maximus ante id sem congue, eget pharetra diam laoreet. Ut eu orci ac lacus cursus molestie vel at magna. Nulla pellentesque arcu lectus, quis egestas eros cursus et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer facilisis nec nisi in sagittis. Fusce mollis suscipit nibh, vitae cursus turpis feugiat eget. Maecenas finibus ligula tortor, sed imperdiet neque mollis pulvinar. Phasellus sed enim dignissim, vehicula magna nec, suscipit elit. Maecenas vehicula tristique pretium. Phasellus rhoncus iaculis felis at tincidunt.In ut molestie massa. Nullam eget sapien molestie, venenatis metus eu, placerat erat. Vestibulum vel ullamcorper mauris. Nam fringilla lacus in ex sollicitudin commodo eget sit amet metus. Quisque dictum ex orci, ultricies blandit ligula fermentum nec. Proin nec lacus scelerisque, venenatis lorem quis, molestie lorem. Phasellus vestibulum felis turpis, et sollicitudin justo fringilla sit amet. Maecenas porta dolor in pretium fermentum. Donec quis interdum nisi, vitae tristique nisi. In hendrerit nisl ut turpis laoreet tempus. Duis lacinia, urna ac commodo dapibus, justo arcu tristique lorem, non pulvinar turpis dui non erat. Quisque erat eros, placerat non dictum in, consectetur nec velit. Curabitur volutpat ex eros, vel imperdiet nunc auctor et.Praesent nunc felis, pulvinar vitae arcu ac, mattis finibus augue. Praesent eget nibh erat. Aliquam quis bibendum justo. Nunc malesuada velit in fermentum accumsan. Nam pulvinar aliquet bibendum. Morbi in nunc dolor. Proin condimentum dolor enim, eget hendrerit diam varius non. Fusce non ante sit amet ipsum egestas cursus ac non risus. In vehicula bibendum arcu ut pulvinar. Cras et tincidunt purus, luctus scelerisque dolor. Duis euismod nulla ligula, at egestas augue varius at. Ut mattis justo id risus consectetur, et auctor lacus rhoncus. Aenean feugiat urna sit amet turpis vehicula eleifend ac ac nulla. Donec vulputate dapibus diam et suscipit. "),
          ],
        ),
      ),
    );
  }
}
