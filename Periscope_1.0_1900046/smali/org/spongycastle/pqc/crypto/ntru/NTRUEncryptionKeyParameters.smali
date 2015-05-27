.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field protected final bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 13
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    .line 14
    return-void
.end method


# virtual methods
.method public rz()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    return-object v0
.end method
