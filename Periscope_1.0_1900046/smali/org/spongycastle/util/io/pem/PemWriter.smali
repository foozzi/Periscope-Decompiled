.class public Lorg/spongycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source ""


# instance fields
.field private final bkl:I

.field private buf:[C


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 19
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    .line 30
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->bkl:I

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->bkl:I

    .line 39
    :goto_0
    return-void
.end method

.method private г(Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 128
    return-void
.end method

.method private ذ(Ljava/lang/String;)V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 136
    return-void
.end method

.method private ᑉ([B)V
    .locals 4

    .line 102
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Base64;->ײ([B)[B

    move-result-object p1

    .line 104
    const/4 v2, 0x0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 106
    const/4 v3, 0x0

    .line 108
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    array-length v0, v0

    if-eq v3, v0, :cond_1

    .line 110
    add-int v0, v2, v3

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 112
    goto :goto_2

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    add-int v1, v2, v3

    aget-byte v1, p1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 117
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lorg/spongycastle/util/io/pem/PemWriter;->write([CII)V

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemWriter;->buf:[C

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 120
    :cond_2
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/util/io/pem/PemObjectGenerator;)V
    .locals 4

    .line 76
    invoke-interface {p1}, Lorg/spongycastle/util/io/pem/PemObjectGenerator;->tf()Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lorg/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->г(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lorg/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {v1}, Lorg/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/util/io/pem/PemHeader;

    move-object v3, v0

    .line 86
    invoke-virtual {v3}, Lorg/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 87
    const-string v0, ": "

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Lorg/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 90
    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/util/io/pem/PemWriter;->newLine()V

    .line 95
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/util/io/pem/PemObject;->te()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->ᑉ([B)V

    .line 96
    invoke-virtual {v1}, Lorg/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/io/pem/PemWriter;->ذ(Ljava/lang/String;)V

    .line 97
    return-void
.end method
