.class public Lo/ʔ;
.super Lo/ɻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u027b<Ljava/io/InputStream;>;"
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
.method protected ˊ(Ljava/io/InputStream;)V
    .locals 0

    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 27
    return-void
.end method

.method protected synthetic ˋ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/ʔ;->ˎ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected ˎ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 1

    .line 21
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic ˮ(Ljava/lang/Object;)V
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lo/ʔ;->ˊ(Ljava/io/InputStream;)V

    return-void
.end method
