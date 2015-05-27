.class public Lorg/spongycastle/util/IPAddress;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ȋ(Ljava/lang/String;)Z
    .locals 8

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    const/4 v6, 0x0

    .line 54
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_4

    const/16 v0, 0x2e

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v5, v0

    if-le v0, v6, :cond_4

    .line 56
    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    .line 58
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 67
    goto :goto_1

    .line 64
    :catch_0
    move-exception v7

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :goto_1
    if-ltz v2, :cond_2

    const/16 v0, 0xff

    if-le v2, v0, :cond_3

    .line 70
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_4
    const/4 v0, 0x4

    if-ne v3, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static ɨ(Ljava/lang/String;)Z
    .locals 3

    .line 82
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/IPAddress;->ȋ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lorg/spongycastle/util/IPAddress;->ȋ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x20

    invoke-static {v2, v0}, Lorg/spongycastle/util/IPAddress;->ʼ(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ɪ(Ljava/lang/String;)Z
    .locals 3

    .line 92
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 93
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/IPAddress;->ɾ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lorg/spongycastle/util/IPAddress;->ɾ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-static {v2, v0}, Lorg/spongycastle/util/IPAddress;->ʼ(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ɾ(Ljava/lang/String;)Z
    .locals 10

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    const/4 v3, 0x0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    const/4 v5, 0x0

    .line 134
    const/4 v7, 0x0

    .line 136
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_8

    const/16 v0, 0x3a

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v6, v0

    if-lt v0, v7, :cond_8

    .line 138
    const/16 v0, 0x8

    if-ne v3, v0, :cond_1

    .line 140
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_1
    if-eq v7, v6, :cond_6

    .line 145
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_3

    const/16 v0, 0x2e

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 149
    invoke-static {v8}, Lorg/spongycastle/util/IPAddress;->ȋ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 160
    :cond_3
    :try_start_0
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 165
    goto :goto_1

    .line 162
    :catch_0
    move-exception v9

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :goto_1
    if-ltz v2, :cond_4

    const v0, 0xffff

    if-le v2, v0, :cond_5

    .line 168
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_5
    :goto_2
    goto :goto_3

    .line 174
    :cond_6
    const/4 v0, 0x1

    if-eq v6, v0, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v6, v0, :cond_7

    if-eqz v5, :cond_7

    .line 176
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_7
    const/4 v5, 0x1

    .line 180
    :goto_3
    add-int/lit8 v7, v6, 0x1

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 184
    :cond_8
    const/16 v0, 0x8

    if-eq v3, v0, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method private static ʼ(Ljava/lang/String;I)Z
    .locals 2

    .line 103
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    if-ltz v1, :cond_0

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v1

    .line 109
    const/4 v0, 0x0

    return v0
.end method
