.class public Lo/akg;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/io/Closeable;)V
    .locals 1

    .line 13
    if-eqz p0, :cond_0

    .line 15
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 20
    :cond_0
    :goto_0
    return-void
.end method
