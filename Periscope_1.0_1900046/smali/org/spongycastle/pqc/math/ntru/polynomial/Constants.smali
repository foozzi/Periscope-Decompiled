.class public Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final bjB:Ljava/math/BigInteger;

.field static final bjC:Ljava/math/BigInteger;

.field static final bjD:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjB:Ljava/math/BigInteger;

    .line 9
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjC:Ljava/math/BigInteger;

    .line 11
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjD:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
