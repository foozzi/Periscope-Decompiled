.class public Lo/ﭜ$ˋ;
.super Lo/ί;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﭜ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cb"
.end annotation


# static fields
.field private static final Ľ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 832
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ﭜ$ˋ;->Ľ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 837
    invoke-direct {p0, p1, p2}, Lo/ί;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 838
    sget-object v0, Lo/ﭜ$ˋ;->Ľ:[I

    invoke-static {p1, p2, v0}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lo/ๅ;

    move-result-object v1

    .line 839
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ﭜ$ˋ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 840
    invoke-virtual {v1}, Lo/ๅ;->recycle()V

    .line 841
    return-void
.end method
