.class Lo/ach;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/act;


# instance fields
.field public final bxH:Lo/fz;


# direct methods
.method public constructor <init>(Lo/fz;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/ach;->bxH:Lo/fz;

    .line 27
    return-void
.end method


# virtual methods
.method public wI()[B
    .locals 9

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/ach;->bxH:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    iget-object v0, p0, Lo/ach;->bxH:Lo/fz;

    invoke-virtual {v0}, Lo/fz;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 36
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 46
    const-string v0, "signature"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    const-string v0, "signer_"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lo/ach;->bxH:Lo/fz;

    invoke-virtual {v0, v6}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v8

    .line 58
    invoke-virtual {v8}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Lo/fw;->t()Lo/gc;

    move-result-object v0

    invoke-virtual {v0}, Lo/gc;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {v8}, Lo/fw;->h()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v8}, Lo/fw;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    :goto_2
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 68
    :cond_4
    goto :goto_3

    .line 66
    :catch_0
    move-exception v5

    .line 67
    const-string v0, "ChannelItem"

    const-string v1, "Should never happen"

    invoke-static {v0, v1, v5}, Lo/akk;->ʻ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public wJ()[B
    .locals 3

    .line 74
    iget-object v0, p0, Lo/ach;->bxH:Lo/fz;

    const-string v1, "signature"

    invoke-virtual {v0, v1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/fw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v2}, Lo/fw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Base64;->ᵥ(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
