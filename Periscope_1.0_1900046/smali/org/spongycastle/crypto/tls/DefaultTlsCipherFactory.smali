.class public Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;
.super Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected lY()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 162
    new-instance v0, Lorg/spongycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/AESEngine;-><init>()V

    return-object v0
.end method

.method protected lZ()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 167
    new-instance v0, Lorg/spongycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/CamelliaEngine;-><init>()V

    return-object v0
.end method

.method protected ma()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .line 172
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->lY()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected mb()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    .line 177
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->lY()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected mc()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    .line 183
    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->lY()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected md()Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .locals 2

    .line 189
    new-instance v0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->lZ()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected me()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .line 194
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->lZ()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected mf()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .line 199
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected mg()Lorg/spongycastle/crypto/StreamCipher;
    .locals 1

    .line 204
    new-instance v0, Lorg/spongycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RC4Engine;-><init>()V

    return-object v0
.end method

.method protected mh()Lorg/spongycastle/crypto/BlockCipher;
    .locals 2

    .line 214
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/SEEDEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    return-object v0
.end method

.method protected ʻ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 6

    .line 121
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->md()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->md()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected ʼ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsStreamCipher;
    .locals 8

    .line 142
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mg()Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mg()Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7

    .line 128
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mf()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mf()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    const/16 v6, 0x18

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 2

    .line 30
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 33
    :sswitch_0
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    .line 36
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    return-object v0

    .line 38
    :sswitch_2
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    .line 41
    :sswitch_3
    const/16 v0, 0x10

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 44
    :sswitch_4
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 47
    :sswitch_5
    const/16 v0, 0x20

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 50
    :sswitch_6
    const/16 v0, 0x20

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˏ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 53
    :sswitch_7
    const/16 v0, 0x10

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 55
    :sswitch_8
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    .line 58
    :sswitch_9
    const/16 v0, 0x20

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 60
    :sswitch_a
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    .line 63
    :sswitch_b
    const/16 v0, 0x10

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ʻ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 65
    :sswitch_c
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    .line 68
    :sswitch_d
    const/16 v0, 0x20

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ʻ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    move-result-object v0

    return-object v0

    .line 70
    :sswitch_e
    const/16 v0, 0xc

    const/16 v1, 0x20

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;III)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    return-object v0

    .line 72
    :sswitch_f
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˋ(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsNullCipher;

    move-result-object v0

    return-object v0

    .line 74
    :sswitch_10
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ʼ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    return-object v0

    .line 76
    :sswitch_11
    const/16 v0, 0x14

    const/16 v1, 0x20

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˊ(Lorg/spongycastle/crypto/tls/TlsContext;III)Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    move-result-object v0

    return-object v0

    .line 78
    :sswitch_12
    invoke-virtual {p0, p1, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ˎ(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    move-result-object v0

    return-object v0

    .line 80
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x2 -> :sswitch_10
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_c
        0xe -> :sswitch_12
        0xf -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_b
        0x14 -> :sswitch_d
        0x64 -> :sswitch_e
        0x65 -> :sswitch_11
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method protected ˊ(Lorg/spongycastle/crypto/tls/TlsContext;III)Lorg/spongycastle/crypto/tls/TlsStreamCipher;
    .locals 8

    .line 149
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsStreamCipher;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڐ(I)Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڐ(I)Lorg/spongycastle/crypto/StreamCipher;

    move-result-object v3

    invoke-virtual {p0, p4}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p4}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p3

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/tls/TlsStreamCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/StreamCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IZ)V

    return-object v0
.end method

.method protected ˋ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7

    .line 87
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ma()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ma()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected ˋ(Lorg/spongycastle/crypto/tls/TlsContext;)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 1

    .line 101
    new-instance v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    return-object v0
.end method

.method protected ˋ(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsNullCipher;
    .locals 3

    .line 135
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method protected ˎ(Lorg/spongycastle/crypto/tls/TlsContext;I)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7

    .line 156
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mh()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mh()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    const/16 v6, 0x10

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected ˎ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsBlockCipher;
    .locals 7

    .line 94
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->me()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->me()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->ڔ(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V

    return-object v0
.end method

.method protected ˏ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 6

    .line 107
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mb()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mb()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method

.method protected ڐ(I)Lorg/spongycastle/crypto/StreamCipher;
    .locals 1

    .line 209
    new-instance v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    return-object v0
.end method

.method protected ڔ(I)Lorg/spongycastle/crypto/Digest;
    .locals 2

    .line 219
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 224
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    .line 228
    :pswitch_3
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_4
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_5
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    return-object v0

    .line 234
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected ᐝ(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsAEADCipher;
    .locals 6

    .line 114
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mc()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;->mc()Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-result-object v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V

    return-object v0
.end method
