.class public Lorg/spongycastle/asn1/eac/UnsignedInteger;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aaC:I

.field private ajM:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/spongycastle/asn1/eac/UnsignedInteger;->aaC:I

    .line 21
    iput-object p2, p0, Lorg/spongycastle/asn1/eac/UnsignedInteger;->ajM:Ljava/math/BigInteger;

    .line 22
    return-void
.end method

.method private fB()[B
    .locals 5

    .line 46
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/UnsignedInteger;->ajM:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 48
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    if-nez v0, :cond_0

    .line 50
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [B

    .line 52
    array-length v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-object v4

    .line 57
    :cond_0
    return-object v3
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/spongycastle/asn1/eac/UnsignedInteger;->aaC:I

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/UnsignedInteger;->fB()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
