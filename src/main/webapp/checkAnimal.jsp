<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.edutecno.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tu animal</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<%@ include file="extra/navbar.jsp"%>
<!-- C:if para cada animal, mediante el objeto de user. Creo que es mejor hacer jsp separados para cada animal, menos confuso. -->
	<div
		class="container full-height d-flex justify-content-center align-items-center ">
		<div class="text-center m-3">
			<h1>Conoce a tu animal del horóscopo chino</h1>
			<div class="m-3">
				<h4>
					Tu animal es: <strong>${userObj.animal}</strong>
				</h4>
			</div>

			<c:if test="${userObj.animal == 'Rata'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">La personalidad de las ratas es muy positiva,
						son personas de exterior, les gusta socializar, hacer conexiones,
						contactos, redes de comunicación y extender su territorio de
						reconocimiento e interacción. Su ánimo casi siempre es alegre,
						abierto y muy dispuesto a escuchar, pero en cuanto a opiniones
						tienden a ser muy reacios cuando se les pide ver las cosas desde
						una perspectiva diferente. Ya que son muy sensibles, suelen tener
						suerte en el ámbito romántico, pero también fallan mucho porque
						son muy distraídos. En cuanto a las finanzas, su vena ahorrativa
						la pueden llevar al límite de la avaricia y la tacañería.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Buey'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">Los que nacieron bajo el animal buey son las
						personas más trabajadoras y disciplinadas del horóscopo chino. Se
						caracterizan por mantenerse fuera de las luces, no les importa si
						su trabajo es reconocido, sienten satisfacción consigo mismos sólo
						de dar su mejor esfuerzo. La discreción, honestidad y sincedirad
						son sus rasgos más distintivos. Por enfocarse tanto en el
						desarrollo personal y profesional suelen dejar la parte
						sentimental, pero alguien nacido bajo el animal buey será la
						pareja más leal, sin mencionar que será un excelente proveedor.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Tigre'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">La actitud y conducta de los tigres es de las
						más complejas, aman los peligros y el desafío. Son personas que no
						pueden mantenerse en un lugar que no represente un reto constante,
						son dinámicos, impulsivos, rebeldes y osados, alguien nacido bajo
						la personalidad del tigre será muy difícil de satisfacer. Nacen
						bajo un designio muy complicado ya que necesitan estímulos
						constantes, lo que significa que pueden llegar a límites muy
						arriesgados para las personas que los rodean y para sí mismos. Así
						será en todos los aspectos de su vida, sin mencionar que asuntos
						como el amor o el dinero pocas veces atrapan su atención, a menos
						que vayan acompañados de riesgo.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Conejo'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">Los conejos son sinceros y bienintencionados, y
						al contrarioo del buey, los conejos exigen reciprocidad. La
						personalidad del conejo siempre es amable, calmada y pacífica, se
						toman toco con mucha paciencia y prefieren pensar las cosas antes
						de actuar, por ello se les suele confundir con la debilidad o el
						nerviosismo, pero no es así, en realidad son metódicos y muy
						analíticos en sus acciones, por eso la paciencia en su manera de
						actuar. Los conejos son muy trabajadores y cautelosos, aunque
						también un poco desconfiados, cuesta un poco de trabajo entrar a
						su círculo cercano.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Dragón'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">A Pesar de que la personalidad del dragón
						representa la fuerza pura y la independencia, en el fondo son
						personas que necesitan mucho soporte emocional, amor incondicional
						y comprensión de todos los sueños y metas que tienen. Los dragones
						están dotados de mucha valentía, no temen nunca emprender nuevas
						aventuras ni explorar nuevas experiencias, siempre y cuando haya
						alguien a su lado que los secunde. Su confianza en sí mismos y su
						fortaleza sirven siempre de ejemplo para sus amigos, son líderes
						natos y parejas muy protectoras.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Serpiente'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">La serpiente es otro de los animales complejos
						del horóscopo chino. Es extremademente intuitiva y persuasiva. Su
						mente es tan profunda y complicada que muchas veces las personas a
						su alrededor no logran conocerlos bien, y tal vez por ello se
						sienten fuera de lugar y un tanto solitarias. Sin embargo, cuando
						una serpiente llega a amar, lo hace de manera profunda y completa,
						las relaciones que entablan nunca son del tipo superficial, razón
						por la que no son del tipo de personas que se rodean de mucha
						gente. Prefieren mantenerse en silencio y al margen, analizando y
						escuchando. La elegancia que poseen de manera natural las
						convierte en personas muy atractivas.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Caballo'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">Los caballos se caracterizan por poseer un
						espíritu libre, son personas que requieren de un espacio personal
						bastante amplio y de mucho tiempo de calidad consigo mismos. Están
						llenos de energía que necesitan desahogar a su propia manera, sin
						pautas, límites ni restricciones. Tienden al atletismo y las
						profesiones que requieran de fuerza y habilidades físicas. No son
						personas motivadas por la riqueza, la fama o el poder, su alma se
						alimenta de pequeños sueños privados que les otorgan mucha
						felicidad y bienestar.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Cabra'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">La cabra es uno de los pocos animales del
						horóscopo chico que se caracterizan por el desinterés, todo lo que
						hacen es pensando en el bien de los demás, sobre todo si se trata
						de sus seres queridos y aun cuando ello les perjudique. Otro rasgo
						importante de las cabras es su perseverancia, nunca dejarán de
						pelear por lo que les importa, nunca se rinden y nunca agachan la
						cabeza ante la adversidad. Son amantes dedicados y comprometidos;
						pero también tienen su lado extremo, no soportan la traición ni
						las cosas a medias, a veces no saben perdonar lo que consideran
						una falta a su confianza.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Mono'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">Son quizá los animáles más alegres y
						entusiastas del horóscopo chino. Debido a su personalidad tan
						espotánea y ligera de llevar son personas muy amadas y aceptadas
						en cualquier círculo, son versátiles y se adaptan rápido a
						cualquier ambiente. Esa ventaja les ayuda mucho cuando se trata de
						cumplir sus metas. Son personas que alcanzan el éxito sin
						encontrarse con tantos obstáculos, y aunque tienen un poco de
						problemas con el compromiso, saben amar de formas muy relajadas y
						libres. Sin presiones para nadie.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Gallo'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">Los gallos son los perfeccionistas del
						horóscopo chino. Tienen esa reputación fría y calculadora porque
						son enfocados, decisivos y no saben modular ni gestionar sus
						emociones, su atención se enfoca en los detalles y en los errores.
						Los gallos no temen decir la verdad y por eso suelen ser
						catalogados como personas frías, pero en el fondo son muy apegados
						a sus seres queridos y a su núcleo familiar. Además de que la
						suerte siempre está de su lado gracias a su perfeccionismo.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Perro'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">La característica del perro es la prudencia y
						la amabilidad. Son personas con las que siempre puedes contar, no
						importa el tipo de circunstancia. Tienen un sentido de lealtad tan
						fuerte que, cuando te aceptan en su círculo de confianza, lucharán
						por ti y te defenderán hasta el final. Son la pareja ideal en toda
						situación, profesional, financiera, amorosa y como amigos no
						podrás encontrar a alguien mejor. Son el mejor animal del
						horóscopo chino en términos de confiabilidad y honestidad.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == 'Cerdo'}">
				<div class="container-fluid my-4">
					<img src="assets/img/${userObj.animal}.jpg" alt="${userObj.animal}"
						style="width: 30em;">
					<p class="my-4">Los cerdos son el animal más afortunado del
						horóscopo chino. Tienen una personalidad magnética y encantadora,
						son personas con las que es muy fácil relacionarse y su buena
						suerte puede contagiarte, así como su carisma y buen humor. Puede
						que a simple vista no los distingas en un grupo muy grande, pero
						cuando te acerques a ellos sentirás esa magia que llevan por
						dentro. Además, son personas que llevan todos sus pensamientos a
						la acción, son reservados en sus planes porque prefieren llevarlos
						a cabo antes que hablar sobre lo que quieren hacer.</p>
				</div>
			</c:if>

			<c:if test="${userObj.animal == null}">
				<p>Usted no tiene animal, nazca de nuevo.</p>
			</c:if>
			<a class="btn btn-warning" href="index.jsp" role="button">Atras</a>
		</div>
	</div>

	<%@ include file="extra/footer.jsp"%>
</body>
</html>