.class public Lo/ŕ;
.super Lo/ｊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\uff4a<Landroid/os/ParcelFileDescriptor;>;"
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
    invoke-virtual {p0, p1, p2}, Lo/ŕ;->ˋ(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 23
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 24
    return-void
.end method

.method protected ˋ(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic ˮ(Ljava/lang/Object;)V
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lo/ŕ;->ˊ(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
