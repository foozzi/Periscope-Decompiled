.class public Lo/ⁱ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ⁱ$if;,
        Lo/ⁱ$ˏ;,
        Lo/ⁱ$ˋ;,
        Lo/ⁱ$ˊ;,
        Lo/ⁱ$con;,
        Lo/ⁱ$ˎ;,
        Lo/ⁱ$ʻ;,
        Lo/ⁱ$ᐝ;,
        Lo/ⁱ$ʿ;,
        Lo/ⁱ$ʾ;,
        Lo/ⁱ$ι;,
        Lo/ⁱ$ͺ;,
        Lo/ⁱ$ʽ;,
        Lo/ⁱ$ʼ;,
        Lo/ⁱ$aux;
    }
.end annotation


# static fields
.field private static final ᑉ:Lo/ⁱ$aux;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 815
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 816
    new-instance v0, Lo/ⁱ$ʻ;

    invoke-direct {v0}, Lo/ⁱ$ʻ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto/16 :goto_0

    .line 817
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 818
    new-instance v0, Lo/ⁱ$ᐝ;

    invoke-direct {v0}, Lo/ⁱ$ᐝ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto :goto_0

    .line 819
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 820
    new-instance v0, Lo/ⁱ$ʿ;

    invoke-direct {v0}, Lo/ⁱ$ʿ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto :goto_0

    .line 821
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 822
    new-instance v0, Lo/ⁱ$ʾ;

    invoke-direct {v0}, Lo/ⁱ$ʾ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto :goto_0

    .line 823
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 824
    new-instance v0, Lo/ⁱ$ι;

    invoke-direct {v0}, Lo/ⁱ$ι;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto :goto_0

    .line 825
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 826
    new-instance v0, Lo/ⁱ$ͺ;

    invoke-direct {v0}, Lo/ⁱ$ͺ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto :goto_0

    .line 827
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 828
    new-instance v0, Lo/ⁱ$ʽ;

    invoke-direct {v0}, Lo/ⁱ$ʽ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    goto :goto_0

    .line 830
    :cond_6
    new-instance v0, Lo/ⁱ$ʼ;

    invoke-direct {v0}, Lo/ⁱ$ʼ;-><init>()V

    sput-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    .line 832
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2904
    return-void
.end method

.method private static ˊ(Lo/ᵔ;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1d54;Ljava/util/ArrayList<Lo/\u2071$if;>;)V"
        }
    .end annotation

    .line 779
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ⁱ$if;

    move-object v2, v0

    .line 780
    invoke-interface {p0, v2}, Lo/ᵔ;->ˊ(Lo/ʳ$if;)V

    .line 781
    goto :goto_0

    .line 782
    :cond_0
    return-void
.end method

.method private static ˊ(Lo/ᵢ;Lo/ⁱ$con;)V
    .locals 8

    .line 786
    if-eqz p1, :cond_2

    .line 787
    instance-of v0, p1, Lo/ⁱ$ˋ;

    if-eqz v0, :cond_0

    .line 788
    move-object v0, p1

    check-cast v0, Lo/ⁱ$ˋ;

    move-object v7, v0

    .line 789
    iget-object v0, v7, Lo/ⁱ$ˋ;->ہ:Ljava/lang/CharSequence;

    iget-boolean v1, v7, Lo/ⁱ$ˋ;->า:Z

    iget-object v2, v7, Lo/ⁱ$ˋ;->ܝ:Ljava/lang/CharSequence;

    iget-object v3, v7, Lo/ⁱ$ˋ;->ᕐ:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Lo/ˡ;->ˊ(Lo/ᵢ;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 794
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lo/ⁱ$ˏ;

    if-eqz v0, :cond_1

    .line 795
    move-object v0, p1

    check-cast v0, Lo/ⁱ$ˏ;

    move-object v7, v0

    .line 796
    iget-object v0, v7, Lo/ⁱ$ˏ;->ہ:Ljava/lang/CharSequence;

    iget-boolean v1, v7, Lo/ⁱ$ˏ;->า:Z

    iget-object v2, v7, Lo/ⁱ$ˏ;->ܝ:Ljava/lang/CharSequence;

    iget-object v3, v7, Lo/ⁱ$ˏ;->ר:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Lo/ˡ;->ˊ(Lo/ᵢ;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 801
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lo/ⁱ$ˊ;

    if-eqz v0, :cond_2

    .line 802
    move-object v0, p1

    check-cast v0, Lo/ⁱ$ˊ;

    move-object v7, v0

    .line 803
    move-object v0, p0

    iget-object v1, v7, Lo/ⁱ$ˊ;->ہ:Ljava/lang/CharSequence;

    iget-boolean v2, v7, Lo/ⁱ$ˊ;->า:Z

    iget-object v3, v7, Lo/ⁱ$ˊ;->ܝ:Ljava/lang/CharSequence;

    iget-object v4, v7, Lo/ⁱ$ˊ;->ᓪ:Landroid/graphics/Bitmap;

    iget-object v5, v7, Lo/ⁱ$ˊ;->ᓫ:Landroid/graphics/Bitmap;

    iget-boolean v6, v7, Lo/ⁱ$ˊ;->ᔾ:Z

    invoke-static/range {v0 .. v6}, Lo/ˡ;->ˊ(Lo/ᵢ;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 812
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic ˋ(Lo/ᵔ;Ljava/util/ArrayList;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lo/ⁱ;->ˊ(Lo/ᵔ;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic ˋ(Lo/ᵢ;Lo/ⁱ$con;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lo/ⁱ;->ˊ(Lo/ᵢ;Lo/ⁱ$con;)V

    return-void
.end method

.method static synthetic ⁱ()Lo/ⁱ$aux;
    .locals 1

    .line 41
    sget-object v0, Lo/ⁱ;->ᑉ:Lo/ⁱ$aux;

    return-object v0
.end method
