.class public Lorg/spongycastle/asn1/x9/X9FieldElement;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected aDF:Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(IIIILorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 6

    .line 33
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p5}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v5, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 4

    .line 28
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDF:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 24
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDF:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->ˋ(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v2

    .line 60
    sget-object v0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDG:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDF:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->ˊ(Ljava/math/BigInteger;I)[B

    move-result-object v3

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public iz()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->aDF:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method
