.class public Lo/ﻣ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final jw:Lo/Ｌ;

.field private final jx:Ljava/lang/String;

.field private jy:Ljava/lang/String;

.field private jz:Ljava/net/URL;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object v0, Lo/Ｌ;->jA:Lo/Ｌ;

    invoke-direct {p0, p1, v0}, Lo/ﻣ;-><init>(Ljava/lang/String;Lo/Ｌ;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/Ｌ;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String url must not be empty or null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lo/ﻣ;->jx:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﻣ;->url:Ljava/net/URL;

    .line 61
    iput-object p2, p0, Lo/ﻣ;->jw:Lo/Ｌ;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 33
    sget-object v0, Lo/Ｌ;->jA:Lo/Ｌ;

    invoke-direct {p0, p1, v0}, Lo/ﻣ;-><init>(Ljava/net/URL;Lo/Ｌ;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lo/Ｌ;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lo/ﻣ;->url:Ljava/net/URL;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ﻣ;->jx:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lo/ﻣ;->jw:Lo/Ｌ;

    .line 50
    return-void
.end method

.method private ノ()Ljava/net/URL;
    .locals 2

    .line 79
    iget-object v0, p0, Lo/ﻣ;->jz:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lo/ﻣ;->亅()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ﻣ;->jz:Ljava/net/URL;

    .line 82
    :cond_0
    iget-object v0, p0, Lo/ﻣ;->jz:Ljava/net/URL;

    return-object v0
.end method

.method private 亅()Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lo/ﻣ;->jy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v1, p0, Lo/ﻣ;->jx:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lo/ﻣ;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_0
    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    invoke-static {v1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ﻣ;->jy:Ljava/lang/String;

    .line 103
    :cond_1
    iget-object v0, p0, Lo/ﻣ;->jy:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 131
    instance-of v0, p1, Lo/ﻣ;

    if-eqz v0, :cond_1

    .line 132
    move-object v0, p1

    check-cast v0, Lo/ﻣ;

    move-object v2, v0

    .line 133
    invoke-virtual {p0}, Lo/ﻣ;->亠()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lo/ﻣ;->亠()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﻣ;->jw:Lo/Ｌ;

    iget-object v1, v2, Lo/ﻣ;->jw:Lo/Ｌ;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 136
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/ﻣ;->jw:Lo/Ｌ;

    invoke-interface {v0}, Lo/Ｌ;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    invoke-virtual {p0}, Lo/ﻣ;->亠()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 142
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/ﻣ;->jw:Lo/Ｌ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 143
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/ﻣ;->亠()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ﻣ;->jw:Lo/Ｌ;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    .line 72
    invoke-direct {p0}, Lo/ﻣ;->ノ()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public 亠()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/ﻣ;->jx:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ﻣ;->jx:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ﻣ;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
