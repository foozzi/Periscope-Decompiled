.class public abstract Lorg/spongycastle/crypto/tls/AbstractTlsPeer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(SS)V
    .locals 0

    .line 37
    return-void
.end method

.method public ˊ(SSLjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 33
    return-void
.end method

.method public ﹲ(Z)V
    .locals 2

    .line 21
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 29
    :cond_0
    return-void
.end method
