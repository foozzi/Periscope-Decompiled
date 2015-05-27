.class Lo/ר$if;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ר;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private ﮢ:Landroid/graphics/RadialGradient;

.field private ﺌ:Landroid/graphics/Paint;

.field private ﺬ:I

.field final synthetic ﺯ:Lo/ר;


# direct methods
.method public constructor <init>(Lo/ר;II)V
    .locals 7

    .line 132
    iput-object p1, p0, Lo/ר$if;->ﺯ:Lo/ר;

    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/ר$if;->ﺌ:Landroid/graphics/Paint;

    .line 135
    invoke-static {p1, p2}, Lo/ר;->ˊ(Lo/ר;I)I

    .line 136
    iput p3, p0, Lo/ר$if;->ﺬ:I

    .line 137
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lo/ר$if;->ﺬ:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lo/ר$if;->ﺬ:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p1}, Lo/ר;->ˊ(Lo/ר;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lo/ר$if;->ﮢ:Landroid/graphics/RadialGradient;

    .line 141
    iget-object v0, p0, Lo/ר$if;->ﺌ:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/ר$if;->ﮢ:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 142
    return-void

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .line 146
    iget-object v0, p0, Lo/ר$if;->ﺯ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getWidth()I

    move-result v4

    .line 147
    iget-object v0, p0, Lo/ר$if;->ﺯ:Lo/ר;

    invoke-virtual {v0}, Lo/ר;->getHeight()I

    move-result v5

    .line 148
    div-int/lit8 v0, v4, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v5, 0x2

    int-to-float v1, v1

    iget v2, p0, Lo/ר$if;->ﺬ:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lo/ר$if;->ﺯ:Lo/ר;

    invoke-static {v3}, Lo/ר;->ˊ(Lo/ר;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lo/ר$if;->ﺌ:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    div-int/lit8 v0, v4, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v5, 0x2

    int-to-float v1, v1

    iget v2, p0, Lo/ר$if;->ﺬ:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    return-void
.end method
