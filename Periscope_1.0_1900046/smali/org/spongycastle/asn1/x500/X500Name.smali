.class public Lorg/spongycastle/asn1/x500/X500Name;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field private static awg:Lorg/spongycastle/asn1/x500/X500NameStyle;


# instance fields
.field private awh:Z

.field private awi:I

.field private awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

.field private awk:[Lorg/spongycastle/asn1/x500/RDN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/spongycastle/asn1/x500/style/BCStyle;->awn:Lorg/spongycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/spongycastle/asn1/x500/X500Name;->awg:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 136
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->awg:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 101
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->awg:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-interface {p1, p2}, Lorg/spongycastle/asn1/x500/X500NameStyle;->ר(Ljava/lang/String;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x500/X500Name;-><init>([Lorg/spongycastle/asn1/x500/RDN;)V

    .line 145
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 146
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 107
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 109
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/x500/RDN;

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awk:[Lorg/spongycastle/asn1/x500/RDN;

    .line 111
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awk:[Lorg/spongycastle/asn1/x500/RDN;

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/RDN;->ᑦ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 129
    iput-object p2, p0, Lorg/spongycastle/asn1/x500/X500Name;->awk:[Lorg/spongycastle/asn1/x500/RDN;

    .line 130
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500Name;->awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 131
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x500/RDN;)V
    .locals 1

    .line 122
    sget-object v0, Lorg/spongycastle/asn1/x500/X500Name;->awg:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V

    .line 123
    return-void
.end method

.method public static ʾ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 2

    .line 81
    instance-of v0, p1, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/x500/X500Name;->ˊ(Lorg/spongycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 2

    .line 65
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 67
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0

    .line 69
    :cond_0
    if-eqz p0, :cond_1

    .line 71
    new-instance v0, Lorg/spongycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 270
    if-ne p1, p0, :cond_0

    .line 272
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x500/X500Name;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const/4 v0, 0x1

    return v0

    .line 289
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

    new-instance v1, Lorg/spongycastle/asn1/x500/X500Name;

    move-object v2, p1

    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-interface {v0, p0, v1}, Lorg/spongycastle/asn1/x500/X500NameStyle;->ˊ(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 291
    :catch_0
    move-exception v4

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 248
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x500/X500Name;->awk:[Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public gK()[Lorg/spongycastle/asn1/x500/RDN;
    .locals 5

    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awk:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v4, v0, [Lorg/spongycastle/asn1/x500/RDN;

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awk:[Lorg/spongycastle/asn1/x500/RDN;

    array-length v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    return-object v4
.end method

.method public hashCode()I
    .locals 1

    .line 253
    iget-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awh:Z

    if-eqz v0, :cond_0

    .line 255
    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awi:I

    return v0

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awh:Z

    .line 260
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->ˊ(Lorg/spongycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awi:I

    .line 262
    iget v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500Name;->awj:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/spongycastle/asn1/x500/X500NameStyle;->ˋ(Lorg/spongycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
