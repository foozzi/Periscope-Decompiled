.class public Lorg/spongycastle/asn1/DERIA5String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aas:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 105
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERIA5String;->Ɩ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->Ϊ(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    .line 115
    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    .line 81
    return-void
.end method

.method public static Ɩ(Ljava/lang/String;)Z
    .locals 4

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 179
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 181
    const/16 v0, 0x7f

    if-le v3, v0, :cond_0

    .line 183
    const/4 v0, 0x0

    return v0

    .line 177
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;
    .locals 4

    .line 27
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/DERIA5String;

    return-object v0

    .line 32
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 36
    move-object v0, p0

    :try_start_0
    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/asn1/DERIA5String;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERIA5String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 38
    :catch_0
    move-exception v3

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ͺ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERIA5String;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 63
    if-nez p1, :cond_0

    instance-of v0, v2, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/asn1/DERIA5String;->ˀ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    move-object v1, v2

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    const/16 v1, 0x16

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 147
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 157
    instance-of v0, p1, Lorg/spongycastle/asn1/DERIA5String;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERIA5String;

    move-object v2, v0

    .line 164
    iget-object v0, p0, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/DERIA5String;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
