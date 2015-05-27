.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aTW:I


# instance fields
.field private aTX:Lorg/spongycastle/crypto/tls/TlsProtocol;

.field private aTY:Ljava/io/InputStream;

.field private aTZ:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private aUa:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private aUb:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private aUc:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private aUd:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private aUe:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private aUf:J

.field private aUg:J

.field private aUh:Ljava/io/ByteArrayOutputStream;

.field private aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private aUj:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private aUk:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private aUl:Z

.field private aUm:I

.field private aUn:I

.field private compressedLimit:I

.field private nx:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x4000

    sput v0, Lorg/spongycastle/crypto/tls/RecordStream;->aTW:I

    return-void
.end method

.method private mA()[B
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 337
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 338
    return-object v1
.end method

.method private static ˊ(IIS)V
    .locals 1

    .line 360
    if-le p0, p1, :cond_0

    .line 362
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 364
    :cond_0
    return-void
.end method

.method private static ˋ(SS)V
    .locals 1

    .line 344
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    goto :goto_1

    .line 353
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 355
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected flush()V
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 332
    return-void
.end method

.method mr()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUm:I

    return v0
.end method

.method ms()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUj:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method mt()V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTZ:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUc:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTZ:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUb:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUc:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUe:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUg:J

    .line 106
    return-void
.end method

.method mu()V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTZ:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUc:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTZ:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUa:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUc:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUd:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUf:J

    .line 118
    return-void
.end method

.method public mv()Z
    .locals 7

    .line 135
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTY:Ljava/io/InputStream;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˏ(ILjava/io/InputStream;)[B

    move-result-object v3

    .line 136
    if-nez v3, :cond_0

    .line 138
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʴ([BI)S

    move-result v4

    .line 147
    const/16 v0, 0xa

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->ˋ(SS)V

    .line 149
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUl:Z

    if-nez v0, :cond_2

    .line 151
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˡ([BI)I

    move-result v5

    .line 152
    and-int/lit16 v0, v5, -0x100

    const/16 v1, 0x300

    if-eq v0, v1, :cond_1

    .line 154
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 156
    :cond_1
    goto :goto_0

    .line 159
    :cond_2
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˇ([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUj:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v0, :cond_3

    .line 162
    iput-object v5, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUj:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUj:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ᐝ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 170
    :cond_4
    :goto_0
    const/4 v0, 0x3

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˆ([BI)I

    move-result v5

    .line 171
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTY:Ljava/io/InputStream;

    invoke-virtual {p0, v4, v0, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(SLjava/io/InputStream;I)[B

    move-result-object v6

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTX:Lorg/spongycastle/crypto/tls/TlsProtocol;

    array-length v1, v6

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v6, v2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˋ(S[BII)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method mw()V
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->lT()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 290
    return-void
.end method

.method mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method my()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    .line 299
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 300
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->lV()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 301
    return-object v1
.end method

.method protected mz()V
    .locals 2

    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTY:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 321
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    goto :goto_1

    .line 323
    :catch_1
    move-exception v1

    .line 326
    :goto_1
    return-void
.end method

.method ʳ([BII)V
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUi:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    .line 307
    return-void
.end method

.method ʻ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUj:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 71
    return-void
.end method

.method ʼ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUk:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 76
    return-void
.end method

.method ˊ(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aTZ:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 93
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUc:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 94
    return-void
.end method

.method protected ˊ(S[BII)V
    .locals 10

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUk:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 230
    :cond_0
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->ˋ(SS)V

    .line 235
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUm:I

    const/16 v1, 0x50

    invoke-static {p4, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(IIS)V

    .line 241
    const/4 v0, 0x1

    if-ge p4, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    .line 243
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 246
    :cond_1
    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    .line 248
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->ʳ([BII)V

    .line 251
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUb:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsCompression;->ʻ(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v7

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUh:Ljava/io/ByteArrayOutputStream;

    if-ne v7, v0, :cond_3

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUe:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUg:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUg:J

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->ˊ(JS[BII)[B

    move-result-object v8

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v7, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 261
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 262
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->mA()[B

    move-result-object v9

    .line 268
    array-length v0, v9

    add-int/lit16 v1, p4, 0x400

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(IIS)V

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUe:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUg:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUg:J

    move v3, p1

    move-object v4, v9

    array-length v6, v9

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->ˊ(JS[BII)[B

    move-result-object v8

    .line 276
    :goto_0
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUn:I

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(IIS)V

    .line 278
    array-length v0, v8

    add-int/lit8 v0, v0, 0x5

    new-array v9, v0, [B

    .line 279
    const/4 v0, 0x0

    invoke-static {p1, v9, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(S[BI)V

    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUk:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 281
    array-length v0, v8

    const/4 v1, 0x3

    invoke-static {v0, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʽ(I[BI)V

    .line 282
    array-length v0, v8

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v8, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->nx:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 285
    return-void
.end method

.method protected ˊ(SLjava/io/InputStream;I)[B
    .locals 10

    .line 179
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUn:I

    const/16 v1, 0x16

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(IIS)V

    .line 181
    invoke-static {p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v7

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUd:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUf:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUf:J

    move v3, p1

    move-object v4, v7

    array-length v6, v7

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsCipher;->ˋ(JS[BII)[B

    move-result-object v8

    .line 184
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(IIS)V

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUa:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsCompression;->ʼ(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v9

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUh:Ljava/io/ByteArrayOutputStream;

    if-eq v9, v0, :cond_0

    .line 193
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {v9, v8, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 194
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->mA()[B

    move-result-object v8

    .line 203
    :cond_0
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUm:I

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(IIS)V

    .line 209
    array-length v0, v8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    .line 211
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 214
    :cond_1
    return-object v8
.end method

.method Ꮮ(I)V
    .locals 2

    .line 58
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUm:I

    .line 59
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUm:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    .line 60
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUn:I

    .line 61
    return-void
.end method

.method ﹷ(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->aUl:Z

    .line 88
    return-void
.end method
