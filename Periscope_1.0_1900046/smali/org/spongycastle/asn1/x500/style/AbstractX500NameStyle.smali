.class public abstract Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(ZLorg/spongycastle/asn1/x500/RDN;[Lorg/spongycastle/asn1/x500/RDN;)Z
    .locals 3

    .line 162
    if-eqz p1, :cond_2

    .line 164
    array-length v0, p3

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 166
    aget-object v0, p3, v2

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    invoke-virtual {p0, p2, v0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->ˊ(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    aput-object v0, p3, v2

    .line 169
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    .line 175
    :cond_2
    const/4 v2, 0x0

    :goto_1
    array-length v0, p3

    if-eq v2, v0, :cond_4

    .line 177
    aget-object v0, p3, v2

    if-eqz v0, :cond_3

    aget-object v0, p3, v2

    invoke-virtual {p0, p2, v0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->ˊ(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const/4 v0, 0x0

    aput-object v0, p3, v2

    .line 180
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private ˏ(Lorg/spongycastle/asn1/ASN1Encodable;)I
    .locals 2

    .line 46
    invoke-static {p1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ᐝ(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->د(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static ͺ(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    .line 32
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 38
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    return-object v1
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/asn1/x500/X500Name;)I
    .locals 6

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->gK()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    .line 57
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_2

    .line 59
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gJ()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    .line 63
    const/4 v5, 0x0

    :goto_1
    array-length v0, v4

    if-eq v5, v0, :cond_0

    .line 65
    aget-object v0, v4, v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 66
    aget-object v0, v4, v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->ˏ(Lorg/spongycastle/asn1/ASN1Encodable;)I

    move-result v0

    xor-int/2addr v1, v0

    .line 63
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    :cond_0
    goto :goto_2

    .line 71
    :cond_1
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 72
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gG()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->ˏ(Lorg/spongycastle/asn1/ASN1Encodable;)I

    move-result v0

    xor-int/2addr v1, v0

    .line 57
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_2
    return v1
.end method

.method protected ˊ(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z
    .locals 1

    .line 190
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ˋ(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    .locals 6

    .line 134
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->gK()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    .line 135
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x500/X500Name;->gK()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v3

    .line 137
    array-length v0, v2

    array-length v1, v3

    if-eq v0, v1, :cond_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    const/4 v4, 0x0

    .line 144
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/RDN;->gI()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->gF()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 149
    :cond_2
    :goto_0
    const/4 v5, 0x0

    :goto_1
    array-length v0, v2

    if-eq v5, v0, :cond_4

    .line 151
    aget-object v0, v2, v5

    invoke-direct {p0, v4, v0, v3}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->ˊ(ZLorg/spongycastle/asn1/x500/RDN;[Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 4

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Lorg/spongycastle/asn1/x500/style/IETFUtils;->ᐝ(Ljava/lang/String;I)Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 102
    :catch_0
    move-exception v3

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t recode value for oid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 113
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/asn1/x500/style/AbstractX500NameStyle;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method protected ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 129
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
