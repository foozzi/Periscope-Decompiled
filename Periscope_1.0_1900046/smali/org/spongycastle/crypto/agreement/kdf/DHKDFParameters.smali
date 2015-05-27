.class public Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private aFF:[B

.field private aFG:[B

.field private ahI:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I[B)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I[B[B)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I[B[B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    iput p2, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->ahI:I

    .line 30
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->aFF:[B

    .line 31
    iput-object p4, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->aFG:[B

    .line 32
    return-void
.end method


# virtual methods
.method public fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->ahI:I

    return v0
.end method

.method public iQ()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->aFF:[B

    return-object v0
.end method

.method public iR()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->aFG:[B

    return-object v0
.end method
