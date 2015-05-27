.class public final Lo/sv;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ˊ(Ljava/net/URI;Z)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/net/URI;Z)Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/sv;->ᐝ(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public static ৲(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string v0, ""

    return-object v0

    .line 52
    :cond_0
    const-string v0, "UTF8"

    :try_start_0
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ᐝ(Ljava/lang/String;Z)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Z)Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 23
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v2

    .line 27
    :cond_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 28
    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 29
    array-length v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 30
    if-eqz p1, :cond_1

    .line 31
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Lo/sv;->ﭔ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Lo/sv;->ﭔ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 36
    :cond_2
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 37
    if-eqz p1, :cond_3

    .line 38
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Lo/sv;->ﭔ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 40
    :cond_3
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 44
    :cond_5
    return-object v2
.end method

.method public static ﭔ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v0, ""

    return-object v0

    .line 63
    :cond_0
    const-string v0, "UTF8"

    :try_start_0
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ﭠ(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 81
    if-nez p0, :cond_0

    .line 82
    const-string v0, ""

    return-object v0

    .line 84
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-static {p0}, Lo/sv;->৲(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 87
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    .line 88
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 89
    const/16 v0, 0x2a

    if-ne v6, v0, :cond_1

    .line 90
    const-string v0, "%2A"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    :cond_1
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_2

    .line 92
    const-string v0, "%20"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_2
    const/16 v0, 0x25

    if-ne v6, v0, :cond_3

    add-int/lit8 v0, v5, 0x2

    if-ge v0, v4, :cond_3

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_3

    .line 96
    const/16 v0, 0x7e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
