if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
import geometry;
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen) { filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen) { filldraw(pic, (path) g, p); }
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }

size(5cm);
for (int i=0; i<=6; ++i) {
draw((0,i)--(6,i), gray);
draw((i,0)--(i,6), gray);
}
draw((1.5,3.5)--(1.5,1.9), red+1.1, EndArrow(TeXHead));
draw((4.5,1.5)--(4.5,3.1), red+1.1, EndArrow(TeXHead));
draw(circle( (1.5, 1.5), 0.3), red+dashed);
draw(circle( (4.5, 3.5), 0.3), red+dashed);
filldraw(circle( (1.5, 3.5), 0.3), gray, black+1.4);
filldraw(circle( (4.5, 1.5), 0.3), gray, black+1.4);
