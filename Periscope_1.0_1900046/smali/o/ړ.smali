.class public final Lo/ړ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ʳ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :cond_0
    return-object p0
.end method

.method public static ˊ(ZLjava/lang/Object;)V
    .locals 2

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method public static ˋ(ZLjava/lang/Object;)V
    .locals 2

    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public static ᐟ(Z)V
    .locals 1

    .line 65
    if-nez p0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public static יּ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(TT;)TT;"
        }
    .end annotation

    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    :cond_0
    return-object p0
.end method

.method public static יּ(Z)V
    .locals 1

    .line 38
    if-nez p0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_0
    return-void
.end method
