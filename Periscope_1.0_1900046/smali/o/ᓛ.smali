.class final Lo/ᓛ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final uV:[J

.field public final uW:[I

.field public final uX:[I

.field public final wK:I

.field public final wL:[J


# direct methods
.method constructor <init>([J[I[J[I)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 42
    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 43
    array-length v0, p4

    array-length v1, p3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 45
    iput-object p1, p0, Lo/ᓛ;->uV:[J

    .line 46
    iput-object p2, p0, Lo/ᓛ;->uW:[I

    .line 47
    iput-object p3, p0, Lo/ᓛ;->wL:[J

    .line 48
    iput-object p4, p0, Lo/ᓛ;->uX:[I

    .line 49
    array-length v0, p1

    iput v0, p0, Lo/ᓛ;->wK:I

    .line 50
    return-void
.end method


# virtual methods
.method public ʳ(J)I
    .locals 5

    .line 60
    iget-object v0, p0, Lo/ᓛ;->wL:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lo/ผ;->ˊ([JJZZ)I

    move-result v3

    .line 61
    move v4, v3

    :goto_0
    if-ltz v4, :cond_1

    .line 62
    iget-object v0, p0, Lo/ᓛ;->wL:[J

    aget-wide v0, v0, v4

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/ᓛ;->uX:[I

    aget v0, v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 63
    return v4

    .line 61
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public ʴ(J)I
    .locals 5

    .line 77
    iget-object v0, p0, Lo/ᓛ;->wL:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lo/ผ;->ˋ([JJZZ)I

    move-result v3

    .line 78
    move v4, v3

    :goto_0
    iget-object v0, p0, Lo/ᓛ;->wL:[J

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 79
    iget-object v0, p0, Lo/ᓛ;->wL:[J

    aget-wide v0, v0, v4

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lo/ᓛ;->uX:[I

    aget v0, v0, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 80
    return v4

    .line 78
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
