.class public Lo/ۃ;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field private static final Ľ:[I


# instance fields
.field private final ᒴ:Lo/ฯ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ۃ;->Ľ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010119
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ۃ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ۃ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0}, Lo/ۃ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ۃ;->Ľ:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lo/ๅ;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ۃ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ۃ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    invoke-virtual {v3}, Lo/ๅ;->recycle()V

    .line 62
    invoke-virtual {v3}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    iput-object v0, p0, Lo/ۃ;->ᒴ:Lo/ฯ;

    .line 63
    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ۃ;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ۃ;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method
