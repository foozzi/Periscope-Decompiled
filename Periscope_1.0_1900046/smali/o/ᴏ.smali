.class final Lo/ᴏ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ˊ(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator<Ljava/io/File;>;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    array-length v0, v1

    if-le v0, p2, :cond_1

    .line 23
    invoke-static {v1, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    array-length v2, v1

    .line 25
    move-object v3, v1

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 27
    if-gt v2, p2, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 25
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method
