.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field protected aSE:Ljava/util/Vector;

.field protected aSP:I

.field protected aSQ:Lorg/spongycastle/crypto/tls/TlsContext;


# direct methods
.method protected constructor <init>(ILjava/util/Vector;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSP:I

    .line 18
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    .line 19
    return-void
.end method


# virtual methods
.method public lK()Z
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public lL()[B
    .locals 2

    .line 125
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->lK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public lM()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->lK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method public lN()V
    .locals 0

    .line 153
    return-void
.end method

.method public ˈ(Ljava/io/InputStream;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->lK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method public ˉ(Ljava/io/InputStream;)V
    .locals 2

    .line 164
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    .line 109
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 4

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSQ:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 25
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->lI()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 27
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->ͺ(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    if-nez v0, :cond_1

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSP:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 50
    :pswitch_0
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->nu()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    .line 51
    goto :goto_1

    .line 57
    :pswitch_1
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->nv()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    .line 58
    goto :goto_1

    .line 69
    :pswitch_2
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->nw()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    .line 70
    goto :goto_1

    .line 77
    :pswitch_3
    goto :goto_1

    .line 80
    :goto_0
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->aSE:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported_signature_algorithms not allowed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ˊ(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 1

    .line 114
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->lX()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->ˊ(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 115
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 0

    .line 158
    return-void
.end method
