import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cure extends StatelessWidget {
  String diseaseName;
  Cure(this.diseaseName);
  final disease = {
    "Tomato___healthy": "Votre plante est déjà en bonne santé",
    "Tomato___Septoria_leaf_spot":
        "Appliquez des pulvérisations de soufre ou des fongicides à base de cuivre chaque semaine dès les premiers signes de la maladie pour empêcher sa propagation. Ces fongicides organiques ne tuent pas la tache foliaire, mais empêchent la germination des spores.",
    "Corn_(maize)___healthy": "Votre plante est déjà en bonne santé",
    "Peach___healthy": "Votre plante est déjà en bonne santé",
    "Apple___Cedar_apple_rust":
        "Enlever les galles des genévriers infectés. Dans certains cas, les plants de genévrier doivent être entièrement éliminés. Appliquer chaque semaine, à partir du débourrement, des fongicides préventifs et de lutte contre les maladies, dont l'utilisation est indiquée sur les pommes, afin de protéger les arbres contre les spores libérées par le genévrier hôte.",
    "Squash___Powdery_mildew":
        "Mélangez une cuillère à soupe de bicarbonate de soude et une demi-cuillère à café de savon liquide non détergent avec un gallon d'eau, et vaporisez généreusement le mélange sur les plantes. Rince-bouche. Le rince-bouche que vous pouvez utiliser quotidiennement pour tuer les germes dans votre bouche peut également être efficace pour tuer les spores d'oïdium.",
    "Grape___healthy": "Votre plante est déjà en bonne santé",
    "Tomato___Tomato_mosaic_virus":
        "En traitant les graines avec 10 % de phosphate trisodique pendant au moins 15 minutes. Dans la mesure du possible, il convient de planter des tomates résistantes aux virus. En outre, l'élimination des plantes symptomatiques peut ralentir la propagation de la maladie une fois qu'elle s'est déclarée.",
    "Tomato___Bacterial_spot":
        "Une plante présentant une tache bactérienne ne peut pas être soignée. Retirez les plantes symptomatiques du champ ou de la serre pour empêcher la propagation des bactéries aux plantes saines. Brûlez, enterrez ou compostez à chaud les plantes atteintes et NE mangez PAS les fruits symptomatiques.",
    "Corn_(maize)___Common_rust_":
        "Pulvérisation de mancozèbe 2,5g/litre d'eau à la première apparition des pustules. Préférer les variétés à maturation précoce.",
    "Cherry_(including_sour)___Powdery_mildew":
        "empêcher l'eau d'irrigation de développer les fruits et les feuilles en utilisant une irrigation qui ne mouille pas les feuilles. En outre, les durées d'irrigation doivent être aussi courtes que possible. Suivez des pratiques culturales qui favorisent une bonne circulation de l'air, comme la taille, et une croissance modérée des pousses grâce à une gestion judicieuse de l'azote.",
    "Apple___Apple_scab":
        "Choisissez des variétés résistantes lorsque c'est possible. Ratissez sous les arbres et détruisez les feuilles infectées afin de réduire le nombre de spores fongiques disponibles pour recommencer le cycle de la maladie au printemps prochain. Arrosez le soir ou tôt le matin (évitez l'irrigation par aspersion) pour donner aux feuilles le temps de sécher avant que l'infection ne se produise.",
    "Potato___Late_blight":
        "Des fongicides sont disponibles pour lutter contre le mildiou de la pomme de terre.",
    "Strawberry___Leaf_scorch":
        "Enlever le feuillage et les résidus de culture après la cueillette ou lors de la rénovation pour éliminer l'inoculum et retarder l'augmentation des maladies à la fin de l'été et en automne. Les traitements fongicides sont efficaces pendant la période de floraison, ainsi qu'à la fin de l'été et à l'automne.",
    "Orange___Haunglongbing_(Citrus_greening)":
        "Les bactéricides sont un traitement topique visant à ralentir les bactéries qui provoquent le verdissement des agrumes. Les bactéricides n'absorbent pas dans l'arbre ou le fruit. Il s'agit d'un traitement relativement nouveau pour les agrumes.",
    "Corn_(maize)___Northern_Leaf_Blight":
        "Application de fongicides pour réduire les pertes de rendement et améliorer la récolte.",
    "Pepper,_bell___healthy": "Votre plante est déjà en bonne santé",
    "Grape___Black_rot":
        "Couper les parties atteintes de la vigne avec un couteau stérile. Enlever toutes les feuilles tachetées et les raisins noirs momifiés. Soyez extrêmement minutieux et assurez-vous d'enlever toutes les parties de la plante qui sont touchées par la pourriture noire. Placez des ventilateurs dans la zone de culture pour garder les plantes au sec.",
    "Pepper,_bell___Bacterial_spot":
        "Pulvérisez tous les 10-14 jours avec du cuivre fixe (fongicide organique) pour ralentir la propagation de l'infection. Si les infections sont graves, faites tourner les poivrons dans un autre endroit et recouvrez le sol de paillis en plastique noir ou de tissu paysager noir avant la plantation.",
    "Tomato___Early_blight":
        "Traiter biologiquement avec un spray au cuivre. Suivez les instructions de l'étiquette. Vous pouvez appliquer jusqu'à ce que les feuilles dégoulinent, une fois par semaine et après chaque pluie. Vous pouvez aussi traiter biologiquement avec un biofongicide comme Serenade.",
    "Blueberry___healthy": "Votre plante est déjà en bonne santé",
    "Cherry_(including_sour)___healthy": "Votre plante est déjà en bonne santé",
    "Potato___healthy": "Votre plante est déjà en bonne santé",
    "Apple___Black_rot":
        "Les fongicides comme les sprays à base de cuivre et le soufre de chaux peuvent être utilisés pour lutter contre la pourriture noire.",
    "Grape___Leaf_blight_(Isariopsis_Leaf_Spot)":
        "Les fongicides pulvérisés pour d'autres maladies pendant la saison peuvent contribuer à réduire cette maladie.",
    "Tomato___Target_Spot":
        "Faites attention à la circulation de l'air, car la tache cible de la tomate se développe dans des conditions humides. Faites pousser les plantes en plein soleil. Assurez-vous que les plantes ne sont pas trop encombrées et que chaque tomate a une bonne circulation d'air. Mettez les plants de tomates en cage ou en tuteur pour qu'ils restent au-dessus du sol.",
    "Tomato___Spider_mitesTwo-spotted_spider_mite":
        "Une façon naturelle de tuer les tétranyques sur vos plantes est de mélanger une partie d'alcool à friction avec une partie d'eau, puis de pulvériser les feuilles. L'alcool tuera les acariens sans endommager les plantes. Une autre solution naturelle pour se débarrasser de ces minuscules parasites est d'utiliser du savon liquide pour la vaisselle.",
    "Tomato___Tomato_Yellow_Leaf_Curl_Virus":
        "Le traitement de cette maladie comprend des insecticides, des semences hybrides et la culture de tomates sous serre.",
    "Apple___healthy": "Votre plante est déjà en bonne santé",
    "Soybean___healthy": "Votre plante est déjà en bonne santé",
    "Grape___Esca_(Black_Measles)":
        "Les sprays à la chaux et au soufre peuvent gérer le trio d'agents pathogènes qui causent la rougeole noire.",
    "Raspberry___healthy": "Votre plante est déjà en bonne santé",
    "Strawberry___healthy": "Votre plante est déjà en bonne santé",
    "Peach___Bacterial_spot":
        "Les composés disponibles pour une utilisation sur la pêche pour la tache bactérienne comprennent le cuivre, l'oxytétracycline (Mycoshield et équivalents génériques), et le syllit+captan pour minimiser l'effet de la maladie.",
    "Potato___Early_blight":
        "Évitez l'irrigation en hauteur. Ne creusez pas les tubercules avant leur pleine maturité afin d'éviter qu'ils ne soient endommagés. N'utilisez pas un champ qui a été utilisé pour des pommes de terre ou des tomates l'année précédente.",
    "Corn_(maize)___Cercospora_leaf_spot Gray_leaf_spot":
        "La maladie peut être réduite lorsqu'une culture autre que le maïs est plantée pendant ≥2 ans dans cette zone donnée. De plus, les fongicides, s'ils sont pulvérisés tôt dans la saison avant les premiers dégâts, peuvent être efficaces pour réduire la maladie.",
    "Tomato___Leaf_Mold":
        "En assurant un espacement adéquat entre les rangs et les plantes qui favorise une meilleure circulation de l'air dans le couvert végétal, ce qui réduit l'humidité et évite un excès d'azote lors de la fertilisation, car un déséquilibre de l'azote favorise le développement des maladies du feuillage.",
    "Tomato___Late_blight":
        "Retirez toutes les feuilles touchées et brûlez-les ou mettez-les à la poubelle. Posez un paillis autour de la base de la plante avec de la paille, des copeaux de bois ou tout autre paillis naturel pour empêcher les spores fongiques du sol d'éclabousser la plante."
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Reconnaissance des maladies des plantes',
              style: new TextStyle(color: Colors.white, fontSize: 14.0)),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Text(disease[diseaseName],
                      style:
                          new TextStyle(color: Colors.black, fontSize: 20.0)),
                ),
              ],
            ),
          ),
        ));
  }
}
