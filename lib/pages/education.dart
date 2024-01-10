import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/pages/footer.dart';
import 'package:personalportfolio/widgets/spaces.dart';
import 'package:personalportfolio/widgets/styles.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              // Mobile View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Education heading
                    FittedBox(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            "Education",
                            textStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    // Education subheading
                    FittedBox(
                      child: Text(
                        'Discover my academic qualifications & institutions.',
                        style: GoogleFonts.montserrat(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),

                    verticalSpace(50),

                    // Academic Qualifications heading
                    FittedBox(
                      child: Text(
                        '👨‍🎓  Academic Qualifications',
                        style: GoogleFonts.montserrat(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    verticalSpace(30),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAA/FBMVEX///+hGXTpUgj3vL6y29PiwNadAG2t2dD2t7iZAGiv2tH2uLmgGHX2tbfpTwD3vb7oRwDI5d/Egar3w8T++fmYAGX89vr98fH4yMnAdaW53tf1+vnvVgD5z9DnPwCfAHD63N3QlbvY7OjG5N7z4u2/bKLu1ub73t74/v3m8/DT6uXx3+vhu9Tpzd/nOwD86emoH2z86d+qL4G7YJv2vqf4zLmsI2amHm/Sn7/36/PZqsiyRI3Smb6oKX+7Ypz+9O774NT0q431tJrwkXDviF3qVh+wTo3FhqzsajDtcj3yoH7ufEyySo74yLXxkGn62MrrZjXtcknqWSbEUG1OF8D0AAAWZ0lEQVR4nO1dCXvaSLYtGxAICWSDEFswYBsMNsRtEc8AMraz2d0JSbrz/v9/effeqtKGvLxBBt58Op1OQEupTp27VQkBYwkSJEiQIEGCBAkSJEiQIEGCBAkSJEiQIEGCBAkSJEiQIEGCBP+1uIqllcyDvtDtGyuWxuLF3bv7GFrpqb1Mf9zVFxcxNBYzPh59Wb+RXrtP/1q37dP1W4sXV8XiwfW6jYzU/ng5mTi9GXMmcfQqTnwp7hf/XLcRp85YXbdO1RLrqztmp78O9vf3Dz6t18hM6SND02zPGbOn8fQsLvxVBIbFd3drNdJXZsDQzkyQ3EMpnp7FhA8oIYj4ba1WLpBhyc5UuvBm+RhP1+LB3X5xn1O8X6cZqz0CDfdYSe3D63lMnYsF37iEYKff12qnt2QM8oSl29a8vUtJ/+pASAgi/linoVOl2+/e3LD+zU37Jq7exYHvLkHIGOY6LY0qJZJupN/G07V4cH2w7+Hg41ptjRfth1Jv0e7G1Ld48GfRx7BYXK8Ct0b12950FlPX4sEnv4Qg4s9tdyhu3L0r7gcp/tp2l2LG56CEYKd/bbtL8eI+THDdjLFz+F5cYVjcX6883S38WJVw7YyxUzC/rkq4fsbYJXyMkhAoxrCgsRu4KkZJiHa69oLGjuDLEwRjWNDYDfyKtlEScc0FjR3BX09J+N+SMT48LeHaCxo7AXfp4gmK99vu4Nr4FpQwHFbXXNDYAVyFCP7+cBQS8f97xghlCqjUQvXNmgsaW8d1SMKDO/YpLOKOZQzzMmprJ2rjWTW0dEGhs3MXcsXiuytWPXt1q9Xqf9r118KI6ozRitjYKrPr9yG9rs5y7GNIxKNPrPzE+au4NN7cqM8KEb2pFTqrG8uwMZjtDz4zI9e5OwhsLP7DOoUIMq2oC3WiLhQzTC1XXhnGlrbaHTNlFKpXATZH95c5IxVc0SgeXFULqdRqkzlttclaLvfmRgp6aZoWdsaOZqxQrOYMQwvY6cEXVk4ZubMrv5m+v2apVGql461CSgv7QzWlpaIsN26gDGFbwW25VnhbytBq7JtH5+gXHged/OKJePQNhsxIhcesBSfnQts6IHUuMiTFDQMQslTqeUjFjobagCu692P+YTXYlCpc3rusi3+xTg62hSyyBgSNoK5mrWDASGwkebag60DIf/1qwUA6gW4iG1Dbc8WjazjMIBHlwhQ6IRJMgdj+U/EKQYZVA7etuuabAAID9tNvqaaGwgYpGik6LMV+cMWKf7NWihgWqr+EiEc/0AlxKAzfmTWwiJBeZzk8xihEZuP4UUYJDb9VmrzrfilMCDR4HGzisfPog0lywbYa+7sosgc6IbaW8+iAgnybd8VWzqDW/OPwljiTnTdcO+LXBxVdihhoUgZ3ReRT/IrmbRBy5vURVxWiB2fjqYMmSuq7dMxyjpuD1tkQQ7JJMi43tJVTvPOeip0cJ4hGeXVUxMpFcIY/Lfa7uF88uqrmVlsiH0yRu3Jcaik5MhtIhhzCtOC60lJrvBMpShCEFndNIsR+vC8W7yi4poRNwiTq/QcmyKA9tExc0DDLGpcL/pINFTg9H+e3x2WBuwX80XjaAD7EkbbA+19mWUQQ+IOu+P4j04SmlBzM/aPP5HFS1rL5iQgKUQ2RQKCM4fSMTSVDDuoUSWbwAqcjbIsMtczMb8w7ggqE33cdzdUZKLKPX4UhG/xPiv284wqKk8jpLlMUdqT7bo4hmaCwMAPTxlmBm59Q0TSr3tBjlK/eMWGi/Bytc3dP2VEYaQp9zDR845QqnFEZI8bEWKkK3hbVnDv0KSpwINxJc4MugYrVnNBZ0DQvCykZI2kbxCvulPwvA6pQQ+O7+XlQtNVkPKYzNpUMOcpisHmvtdQllsqyK7DBMHEQUoIkZUXhqoKRdmZ6fkmntExNNkjHFapnBUNGHfpvo8sdZ5prlbLAwbIjJaMeUnQPIR8644VCStIyePXnGWEND5AmChtyZkczPF/eVMUmYWrSAIUjQarHyY3Q0aUo4ynOj8i0ZWxJ5S5NYcjSGmRFIFTUvAqBjthcMuSglMg14VppUIq3CvSCB3ugiK/KmiGLMD53EtEGkhuKmCoL74Qh6OA0KuUqj0nWZ7ibS4YcmBKFw7RybrrCmVDNkM6HFHOXLc3nisBDala4hBI+1yHaFK8uIRgZNX40/CmzspGrlUWk2Wgy5JD8IG1datycoMCpQseqfOAx3Jg4QTBEFofwXwZnOpNZsAyGIIIumULHzGlVckZRJmAe4gFrYzNDP1qyBiuLUgQ7CWmjZjLugBhiTdNgg2pOaAquWKgOTOm7BXhrDkTSwGDKcM5pyOqvxXCS3+IthyaQGwEuH/GEfzkcUq4wRIFz2JRhlKbJDVKNH8yqrDHo5ERoqbHLQYOVZXAymNk8ZBo3ebANszo4N0X83djM0A+ZErXWIHtMRQ12BSz1PNvkYRVtqzrIHopKnUrNYfacT5cNXIpjJ3mYFota1TCbedyZkiXNMDskd6eWNk8Q8x/3IA04nVCu4BP442y+aYpKJXc2zGaHTEpaBkppN/eX2XE22xRTDjDpZj57XC2IieYZ7Gzg2Gy+YpMwNRnmz5rZfLrJagVuTsNsGijyJJIDvmnQlKSAcNmEd8dmjlfoVTgSZBI2DAT5O9xlVAcnWZA7J11hw8mQg6dEmsg10jD8vE4mhmlSEe3SPMyn8w00YhINJEw3KJVDthik4UButKRgmhimaNVumAa+gzNN1LqbToYclzlRgWgmCJUGfwNLhQp6kMWeD0nFMpCHN4e0NgG7gAXQwOgKdod00ye4AiIIgtoYlQpooTQUZVHkbD4ZEkw5Zdc6vOeNplkrYOBJEw/IIfAmTW+OTQqW53hcGt1LQydE8g1aHzCHtCc76Gi4+nOYlSPBo+4mZ4Z+8IVT7AQ74USGYKktlk9LirlOM8vfgCuKgaCuF3LohIj8oFUoC4LpNLypmc1GXuzRRJG6+WTIwVMiTXREd8FSL8uMdxb5GpeSRwO4c9XIMstnA/eoM1BQ7EizcofJUw6ZsZWZoR9eSnRZNQYma+Rl503zXL4+ZGdCQlKUOyESOTY9gg12CalHnn1ZkJPsrd0IP9PEBDzFJJN8fuh2HlX0v5YSpvMn3mugPvS9bjY8tjUxe9pKMuQwc2J+R4lOdpMdSlbQS/kKjc59nW26h4P5egTPKUnIN6ZcDNpOMuSoiUmuVqOsILov9YRk5yPe9Jgcu2R9BPOg8rl7OCYOWdtvai0/CpSfaXJnembnozIc+gxTjgGoKW0Xqj2XYKPJGh7BfEMuamwxziCoxKZZ4iCCVrYZwRsKU7k17xFErq6Fpnky5C2ntkqQ37gUBZkc/WPPNF2X9EnoOaFPQTBcKmM8Dak+X7kVuxVQNZrKXboauc4HlubSGjY9LiKbeASxbj/Jpv04ZIZYw9sBYDWakvUZuZkU7lxGFOB64op56FYHwlqBarPhF1Akw9TK7f1tge6eaK5Fnrjp37VXV0LPCX0Ej72EIUEzQ20HLFSikzM8M224ZujFHEnfdUKXYD49lKr6JMSZYdQnhraFe1xuq7nVmmuRLi8ppuuELkGYkDQbYYI4M8xBkrjfNjEJ8/ffV2a5IFMiEHPFlBLyVO46IRDkW7CMyYf5UTI0zLvvB7vyKfBPBwcH16wlJoZuUZOXDgnK5YUTDiUvIohF7PmKgBRnauzX/kFxRx5SxI9TFt9/g2mBmCWKPO+mjby0SBFvXILBMsan4aDKPh0Vd+ZT4OLDJP/cSYWGwX9l0kAn9BPEWUV+1UQp39z9pM/D7canwOWjhQf7v3jallLlhZZCU3Au7oSHYpHiPFTGuATTg6vfstFdeEjRfbSwePSBxKH5Qp60a/iNUwQeGVh9RWvQCU8G97/dNr9uPyX6Hi0svv9MCy75xoCvnLnUTrg7nuc94/VVqkGC5+zDkfeh1O0/pGgGPsl99PfVgGJHkyjmuWcKTkK07PDYb8thEx2yz+99TW7/IcWP4Q/jX/Mw0sR1cJH/hFzCPME9yfvchQ+/gI3B1d/Bj4EfbPkhxZVHCzFtkBeSilnuinxymD+npag8pUv/oobfQn8chB8i2vJj7T9XH9uCtDFo5PP5ZtO1RRQx7xasVMv5albXQLND9u39ylNS232sPfLRQkwbaJxAEaiQKwoXJG4i7nircJ6F3v1zFNXehy0yjH60sPj+E6U6VJG7IrdJ8kA+LYZ6J0zwkP0qRj7It+63Lq2DJx8tfP/lrpnOEkU+ncgPjvPcMnm1Gk6GeOvq49FTjwtv7SHFu8iH0Hmnft8PTrL5JkPvwpuGWLlRocqXANw5pCCYbt59ibJQLmLxfksMn3gInfcKChy8w4tM0BUx3ZN8RDN7HEiGWMZ8fa6xLWWMq2cfDi0e/YQCBylmwRXBCiFVoAsSuXwgGYKFfnrKQoVJbOchxScfQpfdogJnCBTJFYEmpkJ0xkAyhEmi+fN5glt6SPH6uSeYeb9gZnBOFKHCQXdEdhhj/MmQypgXm9rKQ4p/viDhvixwgGKaPlhxghZKcyrfLamoMiaipS1kjGcfQneBBU4aKJ4APRARrBNcEFi5925ChfaTOPi8aYIvPITu9QznxUDxmGExg6EGuMpkiBYaWcZENXS/YYbfXiXhPlrqR3YMoQYUBO9jh0Cy4S0pXh+8up0NL2hEfCvSkzj6cjccshN2DMya8Je8dQMO+vFVFsqx4QWNlzJFsG9ffw2a7JidNI+PhyeMJ8M8FNrfX2mhhM1mjOuDd/8XFI8g2A+azUN23Dxs8sL0BBdEAwcVi++K+HcRVycjvtJmowsa//MviT/+oL9W8e8//u3Dv3r4RYfD5rB5PMRkCEXA9I+9IPSX0N7cN+r22y/2JgzFwe414U8Tp1NDq1cJH4IUkSex9XjTfwRlc98D+aDshcc/vGEFijoSZzfBQvu224QebOG5lpTMhgiOFLcvLzPzUBFf+Xt8yObq82O00qzY4GyGoLV4LadQR9Ulfb9406xXVg/xpNSjSeImZTPf/NxdGf9Xaqkre2hmp0v1dSMSsU/fxBd6XrSfp/Hs3sqUZZTgCD15QpSWSn0DDG+VlZ6RR+qhXumB3e4/GVUPWabv7Spb37n0Unyj/lsiEw6CEVAUr9eKAG0GVPwjo8utolFVVRT4PxRe5Rs6+s2/SN90XAmeYqhXpo9yGPTl9LFUr5cepw97ShdeluphL36E3dMeblXtef90dpp5tIMGELjQm2eMm4gw4+8NdjTD+m4scR4pDY4eHfChORQ2F2pgfJQH2DvuPsB7dcrmD/ayZLHRSijykbTf9hu8Z0HLiZRRnTHT9sa8Msevp0bLUypAxwp2WOV78dWUlfCFalv9MEP/dd44Y6zY2Cqotnr0jlMeGSspwtgsfO0/uj2TWxx2ytOkUreevUr7LTPGWInOxP43lXHGYn03p+sKlDJ1mWGAYb/iCyRInw8bSJMRJyn9YNuhS75pxlgq4eutEl6wJbiez0xLrvS6bd146YZ2zkYm1xDK1nFFBszVUfRf7A0zxlwJBfCIpKx2Z5Vb10x1wVBo6FjODIj42dvMZcjsCBOJcHyKTm+CVxWkldMbVbF80dTHUF+ae1NvagJ1pjVdiNHAw/rKy25OTY5e7ux/hECMiM6GOoyvo6MeTgRD2Lm3MNlY9XYtbCx0qTH0UfupkjWIN8oY/ZWCNIKlOgf1lB5020dD+qHSM4m9FFGZzSu2LOUpgFhd9YWaidvp2/xkwOQVJqTrFik9YxcyZPo1rFttZQmVH98He/YU260iVJo/9h+CJcEqQdzxJhljJOPo03NVHYWg4tNnpn4NSzMFSx4hojqbq3vAcCo4qQ80f+TqPx9y0ErihmVHXiowcdX3KuOLh8lk8jD36ju/ho+nCkXCjEqKMvhbMKS4rCj0qzHTaIoBKOPYGT5bkLpYeCdAASpt0dVwegFBRe1zEdUZUgGGc29CVSEZqQ4PGEwoCYOxLOMmePr8vFeObFdIjUO8FNtcDXUKQ2RhUL4odRM32iYw9Ggo6hh/7+gVl4r7R4J6r2KozkaituyRNB5DeqmOKFHgL4ktFS4hBv65f84ICdUdHEk7Eot4M8Y4MKpPrRXB9PRWGpjFTrk03ErJz9QxMcQtmUrJkh2lUXEvgHt7K9XhKpR4f8vKeeFyHJWMJbMgj5jIy+eH6gWFGJxfsYfZjSoY4ka1LwsmjEQ9b0DDi3Hehlh/GXAecoywiPI9yCGzIJkpvfJiaXvGGeLwWxY/DRiisOqFWyIsyUpfWKDai3cJPDTvfera0HHfvMFiM+Sl8/khP9PKqJRU8JfTpqpkiOFHHclJISSRC7dwDV9L9++IMWOUVmLb6lqNriuVmeWVzhUw0zrM2ZUK1NpTnOPr6hImhzzXT2V+VSC/zPCwR5CSKvDKxauqJzx0Gdf9tv5TC5z+EdaXt2Nm1R/cd3gn5nFiTx4h5pmPk8XestenLXiWzcPLnnOLC0vTia04kJF6kPMfLlhdjbpA+Ko6XwKJBTSkL4a2zDgzyozHQpoRvMO3pTF/0Z+otGk8ppmEOqKhUKbyMEVZzk+ZNZvNRrYSvf4TRTaejDHySRhaVPDLqXKITeKdqqjudrnFP42Xu4m1qjvOQlGfEy6wicfp9eEVpC+M51OdeVKRp5Z8otdJVoMObInlpmnUjZiXaW4IcSyB95WdRmX9BY1+ZrcR/ywqQYIEW8DswRG/7z13JqY1cXj0KsFWnoys+sLm/j5dWqdOHY6jUuPRcWw6YuY4Dr9hNFvyOqvrzFldzO9uFnao+Ko7JdZ3HFpOsxzfGTy/jxznQdxEHC/12/XLmr56k+E3CiZQJo9UXtGbdm8kVi17i77NPwbS1c1uZcJs3hN7kslQaTxSRxP+u71jlQ+Fo/YsnXf9RhlPgj/qO9Nh6tVT+By+r3IyS7VnijPqi8zS5ke2u/PK+sF0Kq9vLpyF5Tj84xAzNTPjhe+sPWUOv5PQXcx0Z9JXaWp66q6kPNrslh8wVbgwbce5qPBhW9QhIQUuOG47PWiHz/7m4gwo6GZieOweGBANXQbmLf315xe9dpuvv160S4uRXedyjdSlztfWM5W+2eYWB6b00O2VeN/GSrvNDfpBFybHxMnj9lQftaVGo2lQhqld75XqNjeQuu2dodAZMxg5hy+XWstKDEZq2vUZ796onVk4U/Fj5l19nuGNd9uuKXVtJ9NdLsZi++kpHWG1S11+Q8x0+MnTxVh/4KqOlIt6JeiHvVtoIyPtue6dwRcQx+qFpfCfcraskrr++v7M/W3vkt1X9L7Uxb3D1VsAGT4GN+Coj4r4aNZEHtFX+2OFGM6E4d5OLF0sJN20rbESLJ8X3a7aG/Em5dV7eIYYnrY1Vy/ETjOGHz0eVRYL3rTT61e64wo1brXdla6pupSD0K3csJJQxNJ1mwcLcKVuWxo07YNu2aKgzChLOxhoTiujbqVf4mvLgTN4wxPFbk/FJRa2vf4NjNNRZsTHOHNhjaxT3jFr5LWcmcp7shcji/VHvL/mCIpGegWB5CIj2jLlyWNxGBtP58FburORBYePx+IMvtF3BsyZ5SLbxXS+Sz+tniBBggQJEiRIkCBBggQJEiRIkCBBggQJEiRIkCBBggQJEiR4Cf8LMg55gouQUSsAAAAASUVORK5CYII=',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'Bsc Computer Science',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Aims Institute',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2018-2021',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'CGPA: 8.5',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'PCMB',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'MES College, Bangalore',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2016-2018',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'CGPA: 6.8',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9AKn3xtAeZbYjLbtMoyNT0cBON7BtAWVSg&usqp=CAU',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'Primary school',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'Sri Vidya Kendra, Bangalore',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2004-2016',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'CGPA: 9.5',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ),
                          horizontalSpace(20),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'Coding Bootcamp',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'FunctionUp, Bangalore',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '2022-2022',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'CGPA: 8.5',
                                    style: GoogleFonts.montserrat(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(10),
                    const Footer(),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1100) {
              // Tablet View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Education Heading
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Education",
                          textStyle: GoogleFonts.montserrat(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),

                    // Education Description
                    Text(
                      'Discover my academic qualifications and institutions.',
                      style: GoogleFonts.montserrat(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    verticalSpace(50),

                    // Education Sub Heading
                    Text(
                      '👨‍🎓  Academic Qualifications',
                      style: GoogleFonts.montserrat(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    verticalSpace(30),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAA/FBMVEX///+hGXTpUgj3vL6y29PiwNadAG2t2dD2t7iZAGiv2tH2uLmgGHX2tbfpTwD3vb7oRwDI5d/Egar3w8T++fmYAGX89vr98fH4yMnAdaW53tf1+vnvVgD5z9DnPwCfAHD63N3QlbvY7OjG5N7z4u2/bKLu1ub73t74/v3m8/DT6uXx3+vhu9Tpzd/nOwD86emoH2z86d+qL4G7YJv2vqf4zLmsI2amHm/Sn7/36/PZqsiyRI3Smb6oKX+7Ypz+9O774NT0q431tJrwkXDviF3qVh+wTo3FhqzsajDtcj3yoH7ufEyySo74yLXxkGn62MrrZjXtcknqWSbEUG1OF8D0AAAWZ0lEQVR4nO1dCXvaSLYtGxAICWSDEFswYBsMNsRtEc8AMraz2d0JSbrz/v9/effeqtKGvLxBBt58Op1OQEupTp27VQkBYwkSJEiQIEGCBAkSJEiQIEGCBAkSJEiQIEGCBAkSJEiQIEGCBP+1uIqllcyDvtDtGyuWxuLF3bv7GFrpqb1Mf9zVFxcxNBYzPh59Wb+RXrtP/1q37dP1W4sXV8XiwfW6jYzU/ng5mTi9GXMmcfQqTnwp7hf/XLcRp85YXbdO1RLrqztmp78O9vf3Dz6t18hM6SND02zPGbOn8fQsLvxVBIbFd3drNdJXZsDQzkyQ3EMpnp7FhA8oIYj4ba1WLpBhyc5UuvBm+RhP1+LB3X5xn1O8X6cZqz0CDfdYSe3D63lMnYsF37iEYKff12qnt2QM8oSl29a8vUtJ/+pASAgi/linoVOl2+/e3LD+zU37Jq7exYHvLkHIGOY6LY0qJZJupN/G07V4cH2w7+Hg41ptjRfth1Jv0e7G1Ld48GfRx7BYXK8Ct0b12950FlPX4sEnv4Qg4s9tdyhu3L0r7gcp/tp2l2LG56CEYKd/bbtL8eI+THDdjLFz+F5cYVjcX6883S38WJVw7YyxUzC/rkq4fsbYJXyMkhAoxrCgsRu4KkZJiHa69oLGjuDLEwRjWNDYDfyKtlEScc0FjR3BX09J+N+SMT48LeHaCxo7AXfp4gmK99vu4Nr4FpQwHFbXXNDYAVyFCP7+cBQS8f97xghlCqjUQvXNmgsaW8d1SMKDO/YpLOKOZQzzMmprJ2rjWTW0dEGhs3MXcsXiuytWPXt1q9Xqf9r118KI6ozRitjYKrPr9yG9rs5y7GNIxKNPrPzE+au4NN7cqM8KEb2pFTqrG8uwMZjtDz4zI9e5OwhsLP7DOoUIMq2oC3WiLhQzTC1XXhnGlrbaHTNlFKpXATZH95c5IxVc0SgeXFULqdRqkzlttclaLvfmRgp6aZoWdsaOZqxQrOYMQwvY6cEXVk4ZubMrv5m+v2apVGql461CSgv7QzWlpaIsN26gDGFbwW25VnhbytBq7JtH5+gXHged/OKJePQNhsxIhcesBSfnQts6IHUuMiTFDQMQslTqeUjFjobagCu692P+YTXYlCpc3rusi3+xTg62hSyyBgSNoK5mrWDASGwkebag60DIf/1qwUA6gW4iG1Dbc8WjazjMIBHlwhQ6IRJMgdj+U/EKQYZVA7etuuabAAID9tNvqaaGwgYpGik6LMV+cMWKf7NWihgWqr+EiEc/0AlxKAzfmTWwiJBeZzk8xihEZuP4UUYJDb9VmrzrfilMCDR4HGzisfPog0lywbYa+7sosgc6IbaW8+iAgnybd8VWzqDW/OPwljiTnTdcO+LXBxVdihhoUgZ3ReRT/IrmbRBy5vURVxWiB2fjqYMmSuq7dMxyjpuD1tkQQ7JJMi43tJVTvPOeip0cJ4hGeXVUxMpFcIY/Lfa7uF88uqrmVlsiH0yRu3Jcaik5MhtIhhzCtOC60lJrvBMpShCEFndNIsR+vC8W7yi4poRNwiTq/QcmyKA9tExc0DDLGpcL/pINFTg9H+e3x2WBuwX80XjaAD7EkbbA+19mWUQQ+IOu+P4j04SmlBzM/aPP5HFS1rL5iQgKUQ2RQKCM4fSMTSVDDuoUSWbwAqcjbIsMtczMb8w7ggqE33cdzdUZKLKPX4UhG/xPiv284wqKk8jpLlMUdqT7bo4hmaCwMAPTxlmBm59Q0TSr3tBjlK/eMWGi/Bytc3dP2VEYaQp9zDR845QqnFEZI8bEWKkK3hbVnDv0KSpwINxJc4MugYrVnNBZ0DQvCykZI2kbxCvulPwvA6pQQ+O7+XlQtNVkPKYzNpUMOcpisHmvtdQllsqyK7DBMHEQUoIkZUXhqoKRdmZ6fkmntExNNkjHFapnBUNGHfpvo8sdZ5prlbLAwbIjJaMeUnQPIR8644VCStIyePXnGWEND5AmChtyZkczPF/eVMUmYWrSAIUjQarHyY3Q0aUo4ynOj8i0ZWxJ5S5NYcjSGmRFIFTUvAqBjthcMuSglMg14VppUIq3CvSCB3ugiK/KmiGLMD53EtEGkhuKmCoL74Qh6OA0KuUqj0nWZ7ibS4YcmBKFw7RybrrCmVDNkM6HFHOXLc3nisBDala4hBI+1yHaFK8uIRgZNX40/CmzspGrlUWk2Wgy5JD8IG1datycoMCpQseqfOAx3Jg4QTBEFofwXwZnOpNZsAyGIIIumULHzGlVckZRJmAe4gFrYzNDP1qyBiuLUgQ7CWmjZjLugBhiTdNgg2pOaAquWKgOTOm7BXhrDkTSwGDKcM5pyOqvxXCS3+IthyaQGwEuH/GEfzkcUq4wRIFz2JRhlKbJDVKNH8yqrDHo5ERoqbHLQYOVZXAymNk8ZBo3ebANszo4N0X83djM0A+ZErXWIHtMRQ12BSz1PNvkYRVtqzrIHopKnUrNYfacT5cNXIpjJ3mYFota1TCbedyZkiXNMDskd6eWNk8Q8x/3IA04nVCu4BP442y+aYpKJXc2zGaHTEpaBkppN/eX2XE22xRTDjDpZj57XC2IieYZ7Gzg2Gy+YpMwNRnmz5rZfLrJagVuTsNsGijyJJIDvmnQlKSAcNmEd8dmjlfoVTgSZBI2DAT5O9xlVAcnWZA7J11hw8mQg6dEmsg10jD8vE4mhmlSEe3SPMyn8w00YhINJEw3KJVDthik4UButKRgmhimaNVumAa+gzNN1LqbToYclzlRgWgmCJUGfwNLhQp6kMWeD0nFMpCHN4e0NgG7gAXQwOgKdod00ye4AiIIgtoYlQpooTQUZVHkbD4ZEkw5Zdc6vOeNplkrYOBJEw/IIfAmTW+OTQqW53hcGt1LQydE8g1aHzCHtCc76Gi4+nOYlSPBo+4mZ4Z+8IVT7AQ74USGYKktlk9LirlOM8vfgCuKgaCuF3LohIj8oFUoC4LpNLypmc1GXuzRRJG6+WTIwVMiTXREd8FSL8uMdxb5GpeSRwO4c9XIMstnA/eoM1BQ7EizcofJUw6ZsZWZoR9eSnRZNQYma+Rl503zXL4+ZGdCQlKUOyESOTY9gg12CalHnn1ZkJPsrd0IP9PEBDzFJJN8fuh2HlX0v5YSpvMn3mugPvS9bjY8tjUxe9pKMuQwc2J+R4lOdpMdSlbQS/kKjc59nW26h4P5egTPKUnIN6ZcDNpOMuSoiUmuVqOsILov9YRk5yPe9Jgcu2R9BPOg8rl7OCYOWdtvai0/CpSfaXJnembnozIc+gxTjgGoKW0Xqj2XYKPJGh7BfEMuamwxziCoxKZZ4iCCVrYZwRsKU7k17xFErq6Fpnky5C2ntkqQ37gUBZkc/WPPNF2X9EnoOaFPQTBcKmM8Dak+X7kVuxVQNZrKXboauc4HlubSGjY9LiKbeASxbj/Jpv04ZIZYw9sBYDWakvUZuZkU7lxGFOB64op56FYHwlqBarPhF1Akw9TK7f1tge6eaK5Fnrjp37VXV0LPCX0Ej72EIUEzQ20HLFSikzM8M224ZujFHEnfdUKXYD49lKr6JMSZYdQnhraFe1xuq7nVmmuRLi8ppuuELkGYkDQbYYI4M8xBkrjfNjEJ8/ffV2a5IFMiEHPFlBLyVO46IRDkW7CMyYf5UTI0zLvvB7vyKfBPBwcH16wlJoZuUZOXDgnK5YUTDiUvIohF7PmKgBRnauzX/kFxRx5SxI9TFt9/g2mBmCWKPO+mjby0SBFvXILBMsan4aDKPh0Vd+ZT4OLDJP/cSYWGwX9l0kAn9BPEWUV+1UQp39z9pM/D7canwOWjhQf7v3jallLlhZZCU3Au7oSHYpHiPFTGuATTg6vfstFdeEjRfbSwePSBxKH5Qp60a/iNUwQeGVh9RWvQCU8G97/dNr9uPyX6Hi0svv9MCy75xoCvnLnUTrg7nuc94/VVqkGC5+zDkfeh1O0/pGgGPsl99PfVgGJHkyjmuWcKTkK07PDYb8thEx2yz+99TW7/IcWP4Q/jX/Mw0sR1cJH/hFzCPME9yfvchQ+/gI3B1d/Bj4EfbPkhxZVHCzFtkBeSilnuinxymD+npag8pUv/oobfQn8chB8i2vJj7T9XH9uCtDFo5PP5ZtO1RRQx7xasVMv5albXQLND9u39ylNS232sPfLRQkwbaJxAEaiQKwoXJG4i7nircJ6F3v1zFNXehy0yjH60sPj+E6U6VJG7IrdJ8kA+LYZ6J0zwkP0qRj7It+63Lq2DJx8tfP/lrpnOEkU+ncgPjvPcMnm1Gk6GeOvq49FTjwtv7SHFu8iH0Hmnft8PTrL5JkPvwpuGWLlRocqXANw5pCCYbt59ibJQLmLxfksMn3gInfcKChy8w4tM0BUx3ZN8RDN7HEiGWMZ8fa6xLWWMq2cfDi0e/YQCBylmwRXBCiFVoAsSuXwgGYKFfnrKQoVJbOchxScfQpfdogJnCBTJFYEmpkJ0xkAyhEmi+fN5glt6SPH6uSeYeb9gZnBOFKHCQXdEdhhj/MmQypgXm9rKQ4p/viDhvixwgGKaPlhxghZKcyrfLamoMiaipS1kjGcfQneBBU4aKJ4APRARrBNcEFi5925ChfaTOPi8aYIvPITu9QznxUDxmGExg6EGuMpkiBYaWcZENXS/YYbfXiXhPlrqR3YMoQYUBO9jh0Cy4S0pXh+8up0NL2hEfCvSkzj6cjccshN2DMya8Je8dQMO+vFVFsqx4QWNlzJFsG9ffw2a7JidNI+PhyeMJ8M8FNrfX2mhhM1mjOuDd/8XFI8g2A+azUN23Dxs8sL0BBdEAwcVi++K+HcRVycjvtJmowsa//MviT/+oL9W8e8//u3Dv3r4RYfD5rB5PMRkCEXA9I+9IPSX0N7cN+r22y/2JgzFwe414U8Tp1NDq1cJH4IUkSex9XjTfwRlc98D+aDshcc/vGEFijoSZzfBQvu224QebOG5lpTMhgiOFLcvLzPzUBFf+Xt8yObq82O00qzY4GyGoLV4LadQR9Ulfb9406xXVg/xpNSjSeImZTPf/NxdGf9Xaqkre2hmp0v1dSMSsU/fxBd6XrSfp/Hs3sqUZZTgCD15QpSWSn0DDG+VlZ6RR+qhXumB3e4/GVUPWabv7Spb37n0Unyj/lsiEw6CEVAUr9eKAG0GVPwjo8utolFVVRT4PxRe5Rs6+s2/SN90XAmeYqhXpo9yGPTl9LFUr5cepw97ShdeluphL36E3dMeblXtef90dpp5tIMGELjQm2eMm4gw4+8NdjTD+m4scR4pDY4eHfChORQ2F2pgfJQH2DvuPsB7dcrmD/ayZLHRSijykbTf9hu8Z0HLiZRRnTHT9sa8Msevp0bLUypAxwp2WOV78dWUlfCFalv9MEP/dd44Y6zY2Cqotnr0jlMeGSspwtgsfO0/uj2TWxx2ytOkUreevUr7LTPGWInOxP43lXHGYn03p+sKlDJ1mWGAYb/iCyRInw8bSJMRJyn9YNuhS75pxlgq4eutEl6wJbiez0xLrvS6bd146YZ2zkYm1xDK1nFFBszVUfRf7A0zxlwJBfCIpKx2Z5Vb10x1wVBo6FjODIj42dvMZcjsCBOJcHyKTm+CVxWkldMbVbF80dTHUF+ae1NvagJ1pjVdiNHAw/rKy25OTY5e7ux/hECMiM6GOoyvo6MeTgRD2Lm3MNlY9XYtbCx0qTH0UfupkjWIN8oY/ZWCNIKlOgf1lB5020dD+qHSM4m9FFGZzSu2LOUpgFhd9YWaidvp2/xkwOQVJqTrFik9YxcyZPo1rFttZQmVH98He/YU260iVJo/9h+CJcEqQdzxJhljJOPo03NVHYWg4tNnpn4NSzMFSx4hojqbq3vAcCo4qQ80f+TqPx9y0ErihmVHXiowcdX3KuOLh8lk8jD36ju/ho+nCkXCjEqKMvhbMKS4rCj0qzHTaIoBKOPYGT5bkLpYeCdAASpt0dVwegFBRe1zEdUZUgGGc29CVSEZqQ4PGEwoCYOxLOMmePr8vFeObFdIjUO8FNtcDXUKQ2RhUL4odRM32iYw9Ggo6hh/7+gVl4r7R4J6r2KozkaituyRNB5DeqmOKFHgL4ktFS4hBv65f84ICdUdHEk7Eot4M8Y4MKpPrRXB9PRWGpjFTrk03ErJz9QxMcQtmUrJkh2lUXEvgHt7K9XhKpR4f8vKeeFyHJWMJbMgj5jIy+eH6gWFGJxfsYfZjSoY4ka1LwsmjEQ9b0DDi3Hehlh/GXAecoywiPI9yCGzIJkpvfJiaXvGGeLwWxY/DRiisOqFWyIsyUpfWKDai3cJPDTvfera0HHfvMFiM+Sl8/khP9PKqJRU8JfTpqpkiOFHHclJISSRC7dwDV9L9++IMWOUVmLb6lqNriuVmeWVzhUw0zrM2ZUK1NpTnOPr6hImhzzXT2V+VSC/zPCwR5CSKvDKxauqJzx0Gdf9tv5TC5z+EdaXt2Nm1R/cd3gn5nFiTx4h5pmPk8XestenLXiWzcPLnnOLC0vTia04kJF6kPMfLlhdjbpA+Ko6XwKJBTSkL4a2zDgzyozHQpoRvMO3pTF/0Z+otGk8ppmEOqKhUKbyMEVZzk+ZNZvNRrYSvf4TRTaejDHySRhaVPDLqXKITeKdqqjudrnFP42Xu4m1qjvOQlGfEy6wicfp9eEVpC+M51OdeVKRp5Z8otdJVoMObInlpmnUjZiXaW4IcSyB95WdRmX9BY1+ZrcR/ywqQYIEW8DswRG/7z13JqY1cXj0KsFWnoys+sLm/j5dWqdOHY6jUuPRcWw6YuY4Dr9hNFvyOqvrzFldzO9uFnao+Ko7JdZ3HFpOsxzfGTy/jxznQdxEHC/12/XLmr56k+E3CiZQJo9UXtGbdm8kVi17i77NPwbS1c1uZcJs3hN7kslQaTxSRxP+u71jlQ+Fo/YsnXf9RhlPgj/qO9Nh6tVT+By+r3IyS7VnijPqi8zS5ke2u/PK+sF0Kq9vLpyF5Tj84xAzNTPjhe+sPWUOv5PQXcx0Z9JXaWp66q6kPNrslh8wVbgwbce5qPBhW9QhIQUuOG47PWiHz/7m4gwo6GZieOweGBANXQbmLf315xe9dpuvv160S4uRXedyjdSlztfWM5W+2eYWB6b00O2VeN/GSrvNDfpBFybHxMnj9lQftaVGo2lQhqld75XqNjeQuu2dodAZMxg5hy+XWstKDEZq2vUZ796onVk4U/Fj5l19nuGNd9uuKXVtJ9NdLsZi++kpHWG1S11+Q8x0+MnTxVh/4KqOlIt6JeiHvVtoIyPtue6dwRcQx+qFpfCfcraskrr++v7M/W3vkt1X9L7Uxb3D1VsAGT4GN+Coj4r4aNZEHtFX+2OFGM6E4d5OLF0sJN20rbESLJ8X3a7aG/Em5dV7eIYYnrY1Vy/ETjOGHz0eVRYL3rTT61e64wo1brXdla6pupSD0K3csJJQxNJ1mwcLcKVuWxo07YNu2aKgzChLOxhoTiujbqVf4mvLgTN4wxPFbk/FJRa2vf4NjNNRZsTHOHNhjaxT3jFr5LWcmcp7shcji/VHvL/mCIpGegWB5CIj2jLlyWNxGBtP58FburORBYePx+IMvtF3BsyZ5SLbxXS+Sz+tniBBggQJEiRIkCBBggQJEiRIkCBBggQJEiRIkCBBggQJEiR4Cf8LMg55gouQUSsAAAAASUVORK5CYII=',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bsc Computer Science',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Aims Institute',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                '2018-2021',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                'CGPA: 8.5',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'PCMB',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'MES College, Bangalore',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                '2016-2018',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                'CGPA: 6.8',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(20),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9AKn3xtAeZbYjLbtMoyNT0cBON7BtAWVSg&usqp=CAU',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Primary school',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Sri Vidya Kendra, Bangalore',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                '2004-2016',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                'CGPA: 9.5',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    verticalSpace(20),

                    Container(
                      padding: paddingSymmetricSpace(20, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 150,
                      decoration: gradientDecoration(
                        const Color(0xFF191970),
                        const Color(0xFF6495ED),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          horizontalSpace(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Coding Bootcamp',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'FunctionUp, Bangalore',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                '2022-2022',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              Text(
                                'CGPA: 8.5',
                                style: GoogleFonts.montserrat(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(15),
                    const Footer(),
                  ],
                ),
              );
            } else {
              // Desktop View
              return Padding(
                padding: paddingSymmetricSpace(20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Education Heading
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          "Education",
                          textStyle: GoogleFonts.montserrat(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    verticalSpace(20),

                    // Education Description
                    Text(
                      'Discover my academic qualifications and institutions.',
                      style: GoogleFonts.montserrat(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    verticalSpace(50),

                    // Education Details
                    Text(
                      '👨‍🎓  Academic Qualifications',
                      style: GoogleFonts.montserrat(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    verticalSpace(30),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'data:image/png;base64,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',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bsc Computer Science',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Aims Institute',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    '2018-2021',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    'CGPA: 8.5',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PCMB',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'MES College, Bangalore',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    '2016-2018',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    'CGPA: 6.8',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc9AKn3xtAeZbYjLbtMoyNT0cBON7BtAWVSg&usqp=CAU',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Primary school',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Sri Vidya Kendra, Bangalore',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    '2004-2016',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    'CGPA: 9.5',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        horizontalSpace(20),
                        Container(
                          padding: paddingSymmetricSpace(20, 20),
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          height: 180,
                          decoration: gradientDecoration(
                            const Color(0xFF191970),
                            const Color(0xFF6495ED),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  'data:image/jpeg;base64,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',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Coding Bootcamp',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'FunctionUp, Bangalore',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    '2022-2022',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    'CGPA: 8.5',
                                    style: GoogleFonts.montserrat(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(15),
                    const Footer(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
