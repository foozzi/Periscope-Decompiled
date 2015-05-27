.class Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BasisGenerationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
    }
.end annotation


# instance fields
.field final synthetic bhC:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;->bhC:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;)V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;->rF()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    return-object v0
.end method

.method public rF()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$BasisGenerationTask;->bhC:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;->rE()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    return-object v0
.end method
