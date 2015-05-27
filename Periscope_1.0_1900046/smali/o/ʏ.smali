.class public Lo/ʏ;
.super Lo/ｊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\uff4a<Ljava/io/InputStream;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lo/ｊ;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected synthetic ˊ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0, p1, p2}, Lo/ʏ;->ˎ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Ljava/io/InputStream;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 24
    return-void
.end method

.method protected ˎ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic ˮ(Ljava/lang/Object;)V
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lo/ʏ;->ˊ(Ljava/io/InputStream;)V

    return-void
.end method
