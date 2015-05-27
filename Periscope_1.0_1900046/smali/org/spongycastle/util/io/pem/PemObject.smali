.class public Lorg/spongycastle/util/io/pem/PemObject;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;


# instance fields
.field private content:[B

.field private headers:Ljava/util/List;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/util/io/pem/PemObject;->content:[B

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 27
    sget-object v0, Lorg/spongycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    .line 28
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/List;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    return-object v0
.end method

.method public te()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/spongycastle/util/io/pem/PemObject;->content:[B

    return-object v0
.end method

.method public tf()Lorg/spongycastle/util/io/pem/PemObject;
    .locals 0

    .line 62
    return-object p0
.end method
