.class public Lo/aht;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field private static bFl:Landroid/graphics/Paint;


# instance fields
.field private bFm:I

.field private bFn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lo/aht;->bFl:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lo/aht;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lo/aht;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lo/aht;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 1

    .line 38
    const v0, 0x7f02008b

    iput v0, p0, Lo/aht;->bFm:I

    .line 39
    const v0, 0x7f02008c

    iput v0, p0, Lo/aht;->bFn:I

    .line 40
    iget v0, p0, Lo/aht;->bFm:I

    invoke-virtual {p0, v0}, Lo/aht;->setImageResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 3

    .line 50
    invoke-virtual {p0, p1}, Lo/aht;->ғ(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 51
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lo/aht;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lo/aht;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public setColorAndDrawables(III)V
    .locals 0

    .line 44
    iput p2, p0, Lo/aht;->bFm:I

    .line 45
    iput p3, p0, Lo/aht;->bFn:I

    .line 46
    invoke-virtual {p0, p1}, Lo/aht;->setColor(I)V

    .line 47
    return-void
.end method

.method public ғ(I)Landroid/graphics/Bitmap;
    .locals 11

    .line 56
    invoke-virtual {p0}, Lo/aht;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 57
    iget v0, p0, Lo/aht;->bFm:I

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 58
    iget v0, p0, Lo/aht;->bFn:I

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 59
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 61
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    sget-object v8, Lo/aht;->bFl:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v9, v0, v1

    .line 66
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v0, v1

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v4, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 71
    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 74
    return-object v6
.end method
