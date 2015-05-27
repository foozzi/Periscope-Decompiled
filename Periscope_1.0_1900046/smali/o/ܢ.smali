.class Lo/ܢ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒥ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ܢ$if;,
        Lo/ܢ$ˊ;
    }
.end annotation


# instance fields
.field private final il:Lo/ܢ$ˊ;

.field private final im:Lo/Ꮮ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u13de<Lo/\u0722$if;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lo/ܢ$ˊ;

    invoke-direct {v0}, Lo/ܢ$ˊ;-><init>()V

    iput-object v0, p0, Lo/ܢ;->il:Lo/ܢ$ˊ;

    .line 12
    new-instance v0, Lo/Ꮮ;

    invoke-direct {v0}, Lo/Ꮮ;-><init>()V

    iput-object v0, p0, Lo/ܢ;->im:Lo/Ꮮ;

    .line 75
    return-void
.end method

.method private static ʼ(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/ܢ;->ˏ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ˏ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ᐝ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {p0, p1, p2}, Lo/ܢ;->ˏ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ܢ;->im:Lo/Ꮮ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 44
    invoke-static {p1}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .line 22
    iget-object v0, p0, Lo/ܢ;->il:Lo/ܢ$ˊ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ܢ$ˊ;->ʼ(IILandroid/graphics/Bitmap$Config;)Lo/ܢ$if;

    move-result-object v1

    .line 24
    iget-object v0, p0, Lo/ܢ;->im:Lo/Ꮮ;

    invoke-virtual {v0, v1}, Lo/Ꮮ;->ˋ(Lo/ᒧ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public ˎ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {p1, p2, p3}, Lo/ܢ;->ˏ(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 15
    iget-object v0, p0, Lo/ܢ;->il:Lo/ܢ$ˊ;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/ܢ$ˊ;->ʼ(IILandroid/graphics/Bitmap$Config;)Lo/ܢ$if;

    move-result-object v4

    .line 17
    iget-object v0, p0, Lo/ܢ;->im:Lo/Ꮮ;

    invoke-virtual {v0, v4, p1}, Lo/Ꮮ;->ˊ(Lo/ᒧ;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public ᐝ(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {p1}, Lo/ܢ;->ʼ(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᒨ()Landroid/graphics/Bitmap;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/ܢ;->im:Lo/Ꮮ;

    invoke-virtual {v0}, Lo/Ꮮ;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
