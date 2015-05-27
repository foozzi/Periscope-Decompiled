.class public Lorg/spongycastle/asn1/DERPrintableString;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private aas:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/spongycastle/asn1/DERPrintableString;->ɹ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->Ϊ(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    .line 109
    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    .line 80
    return-void
.end method

.method public static ɹ(Ljava/lang/String;)Z
    .locals 4

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 174
    const/16 v0, 0x7f

    if-le v3, v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    const/16 v0, 0x61

    if-gt v0, v3, :cond_1

    const/16 v0, 0x7a

    if-gt v3, v0, :cond_1

    .line 181
    goto/16 :goto_2

    .line 184
    :cond_1
    const/16 v0, 0x41

    if-gt v0, v3, :cond_2

    const/16 v0, 0x5a

    if-gt v3, v0, :cond_2

    .line 186
    goto/16 :goto_2

    .line 189
    :cond_2
    const/16 v0, 0x30

    if-gt v0, v3, :cond_3

    const/16 v0, 0x39

    if-gt v3, v0, :cond_3

    .line 191
    goto/16 :goto_2

    .line 194
    :cond_3
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 208
    :pswitch_0
    goto :goto_2

    .line 211
    :goto_1
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 170
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 214
    :cond_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->х(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ї([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 136
    return-void
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 3

    .line 146
    instance-of v0, p1, Lorg/spongycastle/asn1/DERPrintableString;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/DERPrintableString;

    move-object v2, v0

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    iget-object v1, v2, Lorg/spongycastle/asn1/DERPrintableString;->aas:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method
