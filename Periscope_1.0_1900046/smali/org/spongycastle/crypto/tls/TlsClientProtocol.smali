.class public Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source ""


# instance fields
.field protected aTl:[B

.field protected aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field protected aTs:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field protected aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected aUU:Lorg/spongycastle/crypto/tls/TlsClient;

.field protected aUV:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;


# virtual methods
.method protected mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUV:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected mO()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected mP()V
    .locals 2

    .line 911
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v0, 0x10

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 913
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ʽ(Ljava/io/OutputStream;)V

    .line 915
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 916
    return-void
.end method

.method protected ˊ(Ljava/io/ByteArrayInputStream;)V
    .locals 2

    .line 593
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ˑ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v1

    .line 595
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 597
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->ˊ(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 598
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/DigitallySigned;)V
    .locals 2

    .line 818
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v0, 0xf

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 820
    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 822
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 823
    return-void
.end method

.method protected ˊ(S[B)V
    .locals 12

    .line 130
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    if-eqz v0, :cond_2

    .line 134
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 136
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 139
    :cond_1
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˎ(Ljava/io/ByteArrayInputStream;)V

    .line 140
    const/16 v0, 0xf

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 142
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->nf()V

    .line 143
    const/16 v0, 0xd

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 144
    const/16 v0, 0x10

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 146
    return-void

    .line 149
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_f

    .line 153
    :pswitch_0
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 157
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/util/Vector;)V

    .line 164
    :sswitch_1
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/Certificate;->ˌ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    .line 166
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTo:Z

    .line 174
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->mn()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->ˎ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 179
    goto :goto_1

    .line 182
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 185
    :goto_1
    const/4 v0, 0x4

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 186
    goto/16 :goto_10

    .line 190
    :pswitch_1
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_1

    goto :goto_2

    .line 194
    :sswitch_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTo:Z

    if-nez v0, :cond_5

    .line 201
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 204
    :cond_5
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/CertificateStatus;->ˍ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTs:Lorg/spongycastle/crypto/tls/CertificateStatus;

    .line 206
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 210
    const/4 v0, 0x5

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 211
    goto/16 :goto_10

    .line 214
    :goto_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 220
    :pswitch_2
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_2

    goto :goto_3

    .line 224
    :sswitch_3
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTp:Z

    if-eqz v0, :cond_6

    .line 230
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 237
    :cond_6
    :sswitch_4
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˎ(Ljava/io/ByteArrayInputStream;)V

    .line 238
    const/16 v0, 0xf

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 239
    const/16 v0, 0x10

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 240
    goto/16 :goto_10

    .line 243
    :goto_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 249
    :pswitch_3
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_4

    .line 253
    :sswitch_5
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˋ(Ljava/io/ByteArrayInputStream;)V

    .line 254
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    if-ltz v0, :cond_7

    .line 258
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    shl-int v4, v1, v0

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->Ꮮ(I)V

    .line 262
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mB()I

    move-result v2

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v1

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUw:I

    .line 270
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0xc

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUx:I

    .line 272
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mw()V

    .line 274
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    if-eqz v0, :cond_8

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SessionParameters;->mE()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUy:[B

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->lE()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsPeer;->mj()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ne()V

    goto/16 :goto_10

    .line 283
    :cond_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->nd()V

    .line 285
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    array-length v0, v0

    if-lez v0, :cond_12

    .line 287
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    goto/16 :goto_10

    .line 294
    :goto_4
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 300
    :pswitch_4
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_4

    goto :goto_5

    .line 304
    :sswitch_6
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ʻ(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/util/Vector;)V

    .line 305
    goto/16 :goto_10

    .line 308
    :goto_5
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 314
    :pswitch_5
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_8

    .line 318
    :pswitch_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/util/Vector;)V

    .line 324
    :pswitch_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->mQ()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 333
    :pswitch_8
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lM()V

    .line 340
    :pswitch_9
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 342
    const/16 v0, 0x8

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 344
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->lU()V

    .line 346
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->lD()Ljava/util/Vector;

    move-result-object v4

    .line 347
    if-eqz v4, :cond_9

    .line 349
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ᐝ(Ljava/util/Vector;)V

    .line 351
    :cond_9
    const/16 v0, 0x9

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 353
    const/4 v5, 0x0

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_a

    .line 356
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lN()V

    goto :goto_6

    .line 360
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->ˊ(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v5

    .line 362
    if-nez v5, :cond_b

    .line 364
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lN()V

    .line 372
    sget-object v0, Lorg/spongycastle/crypto/tls/Certificate;->aSU:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_6

    .line 376
    :cond_b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, v5}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˋ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 378
    invoke-interface {v5}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 382
    :goto_6
    const/16 v0, 0xa

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 388
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mP()V

    .line 389
    const/16 v0, 0xb

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 391
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 392
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->lE()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsPeer;->mj()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 394
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->my()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v6

    .line 396
    if-eqz v5, :cond_e

    instance-of v0, v5, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_e

    .line 398
    move-object v0, v5

    check-cast v0, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-object v7, v0

    .line 406
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 408
    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->lO()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v8

    .line 409
    if-nez v8, :cond_c

    .line 411
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 414
    :cond_c
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v0

    invoke-interface {v6, v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->ˏ(S)[B

    move-result-object v9

    goto :goto_7

    .line 418
    :cond_d
    const/4 v8, 0x0

    .line 419
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v9

    .line 422
    :goto_7
    invoke-interface {v7, v9}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->ﯨ([B)[B

    move-result-object v10

    .line 423
    new-instance v11, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v11, v8, v10}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 424
    invoke-virtual {p0, v11}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˊ(Lorg/spongycastle/crypto/tls/DigitallySigned;)V

    .line 426
    const/16 v0, 0xc

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 429
    :cond_e
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ne()V

    .line 430
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->nf()V

    .line 431
    const/16 v0, 0xd

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 432
    goto/16 :goto_10

    .line 435
    :goto_8
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 441
    :pswitch_a
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    packed-switch v0, :pswitch_data_2

    goto :goto_9

    .line 445
    :pswitch_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/util/Vector;)V

    .line 451
    :pswitch_c
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->mQ()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 459
    :pswitch_d
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, v3}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˈ(Ljava/io/InputStream;)V

    .line 461
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 462
    goto :goto_a

    .line 465
    :goto_9
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 468
    :goto_a
    const/4 v0, 0x6

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 469
    goto/16 :goto_10

    .line 473
    :pswitch_e
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    packed-switch v0, :pswitch_data_3

    goto :goto_b

    .line 479
    :pswitch_f
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lM()V

    .line 485
    :pswitch_10
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTr:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-nez v0, :cond_f

    .line 491
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 494
    :cond_f
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0, v3}, Lorg/spongycastle/crypto/tls/CertificateRequest;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 496
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 498
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 504
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->lS()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 507
    goto :goto_c

    .line 510
    :goto_b
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 513
    :goto_c
    const/4 v0, 0x7

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 514
    goto/16 :goto_10

    .line 518
    :pswitch_11
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_5

    goto :goto_d

    .line 522
    :sswitch_7
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTp:Z

    if-nez v0, :cond_10

    .line 528
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 535
    :cond_10
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->nd()V

    .line 537
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˊ(Ljava/io/ByteArrayInputStream;)V

    .line 538
    const/16 v0, 0xe

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 539
    goto :goto_e

    .line 542
    :goto_d
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 547
    :goto_e
    :pswitch_12
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 555
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_12

    .line 561
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 563
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 566
    :cond_11
    const-string v4, "Renegotiation not supported"

    .line 567
    const/16 v0, 0x64

    invoke-virtual {p0, v0, v4}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˊ(SLjava/lang/String;)V

    .line 568
    goto :goto_10

    .line 576
    :goto_f
    :pswitch_13
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 578
    :cond_12
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_13
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_5
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_2
        :pswitch_13
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xd -> :sswitch_3
        0xe -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x2 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0xd -> :sswitch_7
    .end sparse-switch
.end method

.method protected ˋ(Ljava/io/ByteArrayInputStream;)V
    .locals 9

    .line 603
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵔ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 604
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->ms()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ᐝ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 615
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->lI()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 616
    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 618
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 621
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ʼ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 622
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->ˎ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 623
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/tls/TlsClient;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 628
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    .line 630
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    .line 631
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 633
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 636
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->ᵛ([B)V

    .line 638
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTl:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTf:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsSession;->nt()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    .line 645
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v4

    .line 646
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTi:[I

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->ʾ([II)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    const/16 v0, 0xff

    if-eq v4, v0, :cond_5

    invoke-static {v4, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 651
    :cond_5
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 654
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v4}, Lorg/spongycastle/crypto/tls/TlsClient;->τ(I)V

    .line 660
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v5

    .line 661
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTj:[S

    invoke-static {v0, v5}, Lorg/spongycastle/util/Arrays;->ˋ([SS)Z

    move-result v0

    if-nez v0, :cond_7

    .line 663
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 666
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->ˋ(S)V

    .line 676
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ᐝ(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTz:Ljava/util/Hashtable;

    .line 685
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTz:Ljava/util/Hashtable;

    if-eqz v0, :cond_a

    .line 687
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTz:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 688
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 690
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    .line 699
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVB:Ljava/lang/Integer;

    invoke-virtual {v7, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    goto :goto_1

    .line 709
    :cond_8
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    .line 724
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTk:Ljava/util/Hashtable;

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_9

    .line 726
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 728
    :cond_9
    goto :goto_1

    .line 739
    :cond_a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTz:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVB:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v6

    .line 740
    if-eqz v6, :cond_b

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTm:Z

    .line 750
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˢ([B)[B

    move-result-object v0

    invoke-static {v6, v0}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 752
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 758
    :cond_b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTm:Z

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->ﹲ(Z)V

    .line 760
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTk:Ljava/util/Hashtable;

    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTz:Ljava/util/Hashtable;

    .line 761
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    if-eqz v0, :cond_e

    .line 763
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->mB()I

    move-result v0

    if-ne v4, v0, :cond_c

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->mI()S

    move-result v0

    if-eq v5, v0, :cond_d

    .line 766
    :cond_c
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 769
    :cond_d
    const/4 v6, 0x0

    .line 770
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTg:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SessionParameters;->mJ()Ljava/util/Hashtable;

    move-result-object v7

    .line 773
    :cond_e
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v4, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUu:I

    .line 774
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v5, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUv:S

    .line 776
    if-eqz v7, :cond_12

    .line 783
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˍ(Ljava/util/Hashtable;)Z

    move-result v8

    .line 784
    if-eqz v8, :cond_f

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ⅴ(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 786
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 789
    :cond_f
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-boolean v8, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUC:Z

    .line 791
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0x2f

    invoke-virtual {p0, v6, v7, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->ˊ(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    .line 794
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˑ(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUB:Z

    .line 800
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    if-nez v0, :cond_10

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVo:Ljava/lang/Integer;

    const/16 v1, 0x2f

    invoke-static {v7, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_2

    :cond_10
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTo:Z

    .line 804
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVM:Z

    if-nez v0, :cond_11

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVC:Ljava/lang/Integer;

    const/16 v1, 0x2f

    invoke-static {v7, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTp:Z

    .line 809
    :cond_12
    if-eqz v6, :cond_13

    .line 811
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, v7}, Lorg/spongycastle/crypto/tls/TlsClient;->ʾ(Ljava/util/Hashtable;)V

    .line 813
    :cond_13
    return-void
.end method

.method protected ˏ(Ljava/util/Vector;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsClient;->ˎ(Ljava/util/Vector;)V

    .line 584
    const/4 v0, 0x3

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aVL:S

    .line 586
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aUU:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->mi()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 587
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 588
    return-void
.end method
