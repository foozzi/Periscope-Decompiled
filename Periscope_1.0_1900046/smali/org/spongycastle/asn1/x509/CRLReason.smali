.class public Lorg/spongycastle/asn1/x509/CRLReason;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final ayr:[Ljava/lang/String;

.field private static final ays:Ljava/util/Hashtable;


# instance fields
.field private aiA:Lorg/spongycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/asn1/x509/CRLReason;->ayr:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x509/CRLReason;->ays:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 112
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CRLReason;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 113
    return-void
.end method

.method public static ך(I)Lorg/spongycastle/asn1/x509/CRLReason;
    .locals 3

    .line 142
    invoke-static {p0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    sget-object v0, Lorg/spongycastle/asn1/x509/CRLReason;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lorg/spongycastle/asn1/x509/CRLReason;->ays:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/asn1/x509/CRLReason;

    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/x509/CRLReason;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public static Ⅰ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLReason;
    .locals 1

    .line 97
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/CRLReason;

    return-object v0

    .line 101
    :cond_0
    if-eqz p0, :cond_1

    .line 103
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ᵛ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CRLReason;->ך(I)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public eA()Ljava/math/BigInteger;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CRLReason;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CRLReason;->aiA:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/CRLReason;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 119
    if-ltz v3, :cond_0

    const/16 v0, 0xa

    if-le v3, v0, :cond_1

    .line 121
    :cond_0
    const-string v2, "invalid"

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lorg/spongycastle/asn1/x509/CRLReason;->ayr:[Ljava/lang/String;

    aget-object v2, v0, v3

    .line 127
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
