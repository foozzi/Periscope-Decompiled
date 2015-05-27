.class public Lorg/spongycastle/crypto/tls/TlsServerProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source ""


# instance fields
.field protected aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

.field protected aTB:S

.field protected aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected aVT:Lorg/spongycastle/crypto/tls/TlsServer;

.field protected aVU:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

.field protected aVV:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;


# virtual methods
.method protected mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVU:Lorg/spongycastle/crypto/tls/TlsServerContextImpl;

    return-object v0
.end method

.method protected mO()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    return-object v0
.end method

.method protected nq()V
    .locals 10

    .line 633
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v0, 0x2

    invoke-direct {v4, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 635
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->lJ()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 636
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->lI()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->ˏ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->ʻ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 642
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->ʼ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 643
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->ﹷ(Z)V

    .line 644
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->ˎ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 646
    invoke-static {v5, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 648
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUA:[B

    invoke-virtual {v4, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 654
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    invoke-static {v0, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˋ([BLjava/io/OutputStream;)V

    .line 656
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->ni()I

    move-result v6

    .line 657
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTi:[I

    invoke-static {v0, v6}, Lorg/spongycastle/util/Arrays;->ʾ([II)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    const/16 v0, 0xff

    if-eq v6, v0, :cond_1

    invoke-static {v6, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 662
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 664
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v6, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUu:I

    .line 666
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->nj()S

    move-result v7

    .line 667
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTj:[S

    invoke-static {v0, v7}, Lorg/spongycastle/util/Arrays;->ˋ([SS)Z

    move-result v0

    if-nez v0, :cond_3

    .line 669
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 671
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v7, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUv:S

    .line 673
    invoke-static {v6, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/OutputStream;)V

    .line 674
    invoke-static {v7, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(SLjava/io/OutputStream;)V

    .line 676
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->nk()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    .line 681
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTm:Z

    if-eqz v0, :cond_5

    .line 683
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVB:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v8

    .line 684
    const/4 v0, 0x0

    if-ne v0, v8, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 686
    :goto_0
    if-eqz v9, :cond_5

    .line 700
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˉ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    .line 701
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVB:Ljava/lang/Integer;

    sget-object v2, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˢ([B)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    if-eqz v0, :cond_8

    .line 713
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˍ(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUC:Z

    .line 715
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTk:Ljava/util/Hashtable;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    const/16 v3, 0x50

    invoke-virtual {p0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˊ(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v1

    iput-short v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    .line 718
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ˑ(Ljava/util/Hashtable;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUB:Z

    .line 724
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVM:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->aVo:Ljava/lang/Integer;

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTo:Z

    .line 728
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVM:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsProtocol;->aVC:Ljava/lang/Integer;

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTp:Z

    .line 732
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTz:Ljava/util/Hashtable;

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˊ(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    .line 735
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    if-ltz v0, :cond_9

    .line 737
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aTn:S

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    shl-int v8, v1, v0

    .line 738
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0, v8}, Lorg/spongycastle/crypto/tls/RecordStream;->Ꮮ(I)V

    .line 741
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->mB()I

    move-result v2

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v1

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUw:I

    .line 747
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0xc

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUx:I

    .line 749
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 751
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mw()V

    .line 752
    return-void
.end method

.method protected nr()V
    .locals 3

    .line 757
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 758
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(S[BI)V

    .line 759
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(I[BI)V

    .line 761
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˡ([BII)V

    .line 762
    return-void
.end method

.method protected ns()Z
    .locals 1

    .line 776
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTB:S

    if-ltz v0, :cond_0

    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTB:S

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʾ(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ʼ(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    .line 421
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/Certificate;->ˌ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    .line 423
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 425
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ᐝ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 426
    return-void
.end method

.method protected ʼ(S)V
    .locals 1

    .line 352
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 360
    :sswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lorg/spongycastle/crypto/tls/Certificate;->aSU:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ᐝ(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 368
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ʼ(S)V

    .line 371
    :cond_0
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method protected ʽ(Ljava/io/ByteArrayInputStream;)V
    .locals 10

    .line 431
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v3

    .line 433
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 436
    const/4 v4, 0x0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVV:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->mm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->mK()S

    move-result v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->ˏ(S)[B

    move-result-object v5

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVV:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocol;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v5

    .line 449
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/Certificate;->ץ(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v6

    .line 450
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/Certificate;->hj()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v7

    .line 451
    invoke-static {v7}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->ˊ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v8

    .line 453
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTB:S

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʿ(S)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v9

    .line 454
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 455
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->mm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v1

    invoke-interface {v9, v0, v1, v8, v5}, Lorg/spongycastle/crypto/tls/TlsSigner;->ˊ(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v4, v0

    .line 460
    goto :goto_1

    .line 458
    :catch_0
    move-exception v5

    .line 462
    :goto_1
    if-nez v4, :cond_1

    .line 464
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 466
    :cond_1
    return-void
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/CertificateStatus;)V
    .locals 2

    .line 608
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v0, 0x16

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 610
    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/tls/CertificateStatus;->encode(Ljava/io/OutputStream;)V

    .line 612
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 613
    return-void
.end method

.method protected ˊ(S[B)V
    .locals 6

    .line 92
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    .line 98
    :pswitch_0
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 102
    :sswitch_0
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ͺ(Ljava/io/ByteArrayInputStream;)V

    .line 103
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->nq()V

    .line 106
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->nl()Ljava/util/Vector;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ᐝ(Ljava/util/Vector;)V

    .line 113
    :cond_0
    const/4 v0, 0x3

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->mi()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->nm()Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    .line 120
    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->mQ()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v4

    .line 131
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˏ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 133
    :goto_0
    const/4 v0, 0x4

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 136
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTo:Z

    .line 141
    :cond_3
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTo:Z

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->nn()Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object v5

    .line 144
    if-eqz v5, :cond_4

    .line 146
    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˊ(Lorg/spongycastle/crypto/tls/CertificateStatus;)V

    .line 150
    :cond_4
    const/4 v0, 0x5

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lL()[B

    move-result-object v5

    .line 153
    if-eqz v5, :cond_5

    .line 155
    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˤ([B)V

    .line 157
    :cond_5
    const/4 v0, 0x6

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->no()Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˋ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˎ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->lS()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    .line 172
    :cond_6
    const/4 v0, 0x7

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 174
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->nr()V

    .line 175
    const/16 v0, 0x8

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->mx()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->lU()V

    .line 179
    goto/16 :goto_9

    .line 182
    :goto_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 188
    :pswitch_1
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_1

    goto :goto_2

    .line 192
    :sswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ʻ(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ʻ(Ljava/util/Vector;)V

    .line 193
    const/16 v0, 0x9

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 194
    goto/16 :goto_9

    .line 197
    :goto_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 203
    :pswitch_2
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_2

    goto :goto_3

    .line 207
    :sswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ʻ(Ljava/util/Vector;)V

    .line 212
    :sswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_7

    .line 214
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 216
    :cond_7
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ʼ(Ljava/io/ByteArrayInputStream;)V

    .line 217
    const/16 v0, 0xa

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 218
    goto/16 :goto_9

    .line 221
    :goto_3
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 227
    :pswitch_3
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 231
    :pswitch_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ʻ(Ljava/util/Vector;)V

    .line 236
    :pswitch_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_8

    .line 238
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lN()V

    goto :goto_4

    .line 242
    :cond_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 250
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 252
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    if-nez v0, :cond_b

    .line 256
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 261
    :cond_a
    sget-object v0, Lorg/spongycastle/crypto/tls/Certificate;->aSU:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ᐝ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 268
    :cond_b
    :goto_4
    :pswitch_6
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ι(Ljava/io/ByteArrayInputStream;)V

    .line 269
    const/16 v0, 0xb

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 270
    goto/16 :goto_9

    .line 273
    :goto_5
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 279
    :pswitch_7
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_3

    goto :goto_6

    .line 288
    :sswitch_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ns()Z

    move-result v0

    if-nez v0, :cond_c

    .line 290
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 293
    :cond_c
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ʽ(Ljava/io/ByteArrayInputStream;)V

    .line 294
    const/16 v0, 0xc

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 296
    goto/16 :goto_9

    .line 299
    :goto_6
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 305
    :pswitch_8
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    sparse-switch v0, :sswitch_data_4

    goto :goto_7

    .line 309
    :sswitch_5
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ns()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 311
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 317
    :cond_d
    :sswitch_6
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˎ(Ljava/io/ByteArrayInputStream;)V

    .line 318
    const/16 v0, 0xd

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 320
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTp:Z

    if-eqz v0, :cond_e

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsServer;->np()Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˋ(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    .line 323
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ne()V

    .line 325
    :cond_e
    const/16 v0, 0xe

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 327
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->nf()V

    .line 328
    const/16 v0, 0xf

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 329
    const/16 v0, 0x10

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVL:S

    .line 330
    goto :goto_9

    .line 333
    :goto_7
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 345
    :goto_8
    :pswitch_9
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 347
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x8 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0xb -> :sswitch_4
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0xb -> :sswitch_5
        0xc -> :sswitch_6
    .end sparse-switch
.end method

.method protected ˋ(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V
    .locals 3

    .line 618
    if-nez p1, :cond_0

    .line 620
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 623
    :cond_0
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v0, 0x4

    invoke-direct {v2, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 625
    invoke-virtual {p1, v2}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->encode(Ljava/io/OutputStream;)V

    .line 627
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 628
    return-void
.end method

.method protected ˎ(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2

    .line 598
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v0, 0xd

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    .line 600
    invoke-virtual {p1, v1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->encode(Ljava/io/OutputStream;)V

    .line 602
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 603
    return-void
.end method

.method protected ˤ([B)V
    .locals 3

    .line 767
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    array-length v0, p1

    const/16 v1, 0xc

    invoke-direct {v2, p0, v1, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    .line 769
    invoke-virtual {v2, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    .line 771
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->ng()V

    .line 772
    return-void
.end method

.method protected ͺ(Ljava/io/ByteArrayInputStream;)V
    .locals 8

    .line 471
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᵔ(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->mo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 477
    :cond_0
    const/16 v0, 0x20

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ᐝ(ILjava/io/InputStream;)[B

    move-result-object v3

    .line 483
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ٴ(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 484
    array-length v0, v4

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    .line 486
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 494
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʹ(Ljava/io/InputStream;)I

    move-result v5

    .line 495
    const/4 v0, 0x2

    if-lt v5, v0, :cond_2

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_3

    .line 497
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 499
    :cond_3
    div-int/lit8 v0, v5, 0x2

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʼ(ILjava/io/InputStream;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTi:[I

    .line 505
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ﾞ(Ljava/io/InputStream;)S

    move-result v6

    .line 506
    const/4 v0, 0x1

    if-ge v6, v0, :cond_4

    .line 508
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 510
    :cond_4
    invoke-static {v6, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ʻ(ILjava/io/InputStream;)[S

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTj:[S

    .line 517
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ᐝ(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTk:Ljava/util/Hashtable;

    .line 519
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->ˋ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 521
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/tls/TlsServer;->ʽ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 523
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aSM:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->aUz:[B

    .line 525
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTi:[I

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ͺ([I)V

    .line 526
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTj:[S

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ˊ([S)V

    .line 543
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTi:[I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ʾ([II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTm:Z

    .line 552
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTk:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVB:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v7

    .line 553
    if-eqz v7, :cond_6

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTm:Z

    .line 562
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->abo:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˢ([B)[B

    move-result-object v0

    invoke-static {v7, v0}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 564
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 569
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTm:Z

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ﹲ(Z)V

    .line 571
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTk:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTk:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServer;->ـ(Ljava/util/Hashtable;)V

    .line 575
    :cond_7
    return-void
.end method

.method protected ᐝ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTt:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz v0, :cond_1

    .line 383
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 386
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    .line 388
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->lN()V

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTA:Lorg/spongycastle/crypto/tls/TlsCredentials;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S

    move-result v0

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTB:S

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˋ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 415
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVT:Lorg/spongycastle/crypto/tls/TlsServer;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsServer;->ᐝ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 416
    return-void
.end method

.method protected ι(Ljava/io/ByteArrayInputStream;)V
    .locals 3

    .line 580
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->ˉ(Ljava/io/InputStream;)V

    .line 582
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˏ(Ljava/io/ByteArrayInputStream;)V

    .line 584
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mN()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTq:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    .line 585
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->lE()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->mO()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsPeer;->mj()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->ˊ(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 587
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVG:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->my()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aVV:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 589
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->aTp:Z

    if-nez v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsServerProtocol;->ne()V

    .line 593
    :cond_0
    return-void
.end method
