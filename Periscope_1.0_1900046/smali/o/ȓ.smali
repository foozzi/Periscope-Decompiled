.class public Lo/ȓ;
.super Lo/ɻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u027b<Landroid/os/ParcelFileDescriptor;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lo/ɻ;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected ˊ(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 21
    const-string v0, "r"

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 27
    return-void
.end method

.method protected synthetic ˋ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/ȓ;->ˊ(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic ˮ(Ljava/lang/Object;)V
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lo/ȓ;->ˊ(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
