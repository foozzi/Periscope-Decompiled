.class public Lo/akl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bIq:[I

.field private static bIs:Lo/akl;


# instance fields
.field private bIr:I

.field private ᖟ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/akl;->bIq:[I

    return-void

    :array_0
    .array-data 4
        0x7f090056
        0x7f090057
        0x7f090058
        0x7f090059
        0x7f09005a
        0x7f09005b
        0x7f09005c
        0x7f09005d
        0x7f090051
        0x7f090052
        0x7f090053
        0x7f090054
        0x7f090055
    .end array-data
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lo/akl;->bIq:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lo/akl;->ᖟ:[I

    .line 41
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lo/akl;->bIq:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/akl;->ᖟ:[I

    sget-object v1, Lo/akl;->bIq:[I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/akl;->bIr:I

    .line 45
    return-void
.end method

.method public static ˊ(Landroid/content/res/Resources;I)I
    .locals 3

    .line 48
    sget-object v0, Lo/akl;->bIs:Lo/akl;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lo/akl;

    invoke-direct {v0, p0}, Lo/akl;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lo/akl;->bIs:Lo/akl;

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 52
    sget-object v0, Lo/akl;->bIs:Lo/akl;

    iget v0, v0, Lo/akl;->bIr:I

    return v0

    .line 54
    :cond_1
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 55
    sget-object v0, Lo/akl;->bIs:Lo/akl;

    iget-object v0, v0, Lo/akl;->ᖟ:[I

    sget-object v1, Lo/akl;->bIs:Lo/akl;

    iget-object v1, v1, Lo/akl;->ᖟ:[I

    array-length v1, v1

    rem-int v1, v2, v1

    aget v0, v0, v1

    return v0
.end method

.method public static ˊ(Landroid/content/res/Resources;Ljava/lang/String;I)Lo/ams;
    .locals 9

    .line 82
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 83
    new-instance v0, Lo/ams;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v3, v8

    move v4, v8

    move v5, p2

    const v6, 0x7f090082

    invoke-direct/range {v0 .. v7}, Lo/ams;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/shapes/Shape;IIIILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static ˊ(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 3

    .line 75
    invoke-static {p2}, Lo/akl;->Ꭲ(I)I

    move-result v1

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lo/akl;->ˊ(Landroid/content/res/Resources;Ljava/lang/String;I)Lo/ams;

    move-result-object v2

    .line 77
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public static ˋ(Landroid/content/res/Resources;I)I
    .locals 2

    .line 71
    invoke-static {p0, p1}, Lo/akl;->ˊ(Landroid/content/res/Resources;I)I

    move-result v0

    const v1, -0x5f000001

    and-int/2addr v0, v1

    return v0
.end method

.method public static Ꭲ(I)I
    .locals 3

    .line 63
    if-nez p0, :cond_0

    .line 64
    const v0, 0x7f090050

    return v0

    .line 66
    :cond_0
    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 67
    sget-object v0, Lo/akl;->bIq:[I

    sget-object v1, Lo/akl;->bIq:[I

    array-length v1, v1

    rem-int v1, v2, v1

    aget v0, v0, v1

    return v0
.end method
