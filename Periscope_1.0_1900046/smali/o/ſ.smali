.class public Lo/ſ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private চ:I

.field private দ:I

.field private ন:I

.field private প:I

.field private য:I

.field private র:Z

.field private হ:Z

.field private ー:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lo/ſ;->চ:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lo/ſ;->দ:I

    .line 32
    const/high16 v0, -0x80000000

    iput v0, p0, Lo/ſ;->ন:I

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lo/ſ;->ー:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lo/ſ;->প:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lo/ſ;->য:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ſ;->র:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ſ;->হ:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 53
    iget-boolean v0, p0, Lo/ſ;->র:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ſ;->চ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/ſ;->দ:I

    :goto_0
    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 41
    iget v0, p0, Lo/ſ;->চ:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .line 45
    iget v0, p0, Lo/ſ;->দ:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 49
    iget-boolean v0, p0, Lo/ſ;->র:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ſ;->দ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/ſ;->চ:I

    :goto_0
    return v0
.end method

.method public ـ(II)V
    .locals 1

    .line 57
    iput p1, p0, Lo/ſ;->ন:I

    .line 58
    iput p2, p0, Lo/ſ;->ー:I

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ſ;->হ:Z

    .line 60
    iget-boolean v0, p0, Lo/ſ;->র:Z

    if-eqz v0, :cond_1

    .line 61
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_0

    iput p2, p0, Lo/ſ;->চ:I

    .line 62
    :cond_0
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_3

    iput p1, p0, Lo/ſ;->দ:I

    goto :goto_0

    .line 64
    :cond_1
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2

    iput p1, p0, Lo/ſ;->চ:I

    .line 65
    :cond_2
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_3

    iput p2, p0, Lo/ſ;->দ:I

    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method public ᐧ(II)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ſ;->হ:Z

    .line 71
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iput p1, p0, Lo/ſ;->প:I

    iput p1, p0, Lo/ſ;->চ:I

    .line 72
    :cond_0
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    iput p2, p0, Lo/ſ;->য:I

    iput p2, p0, Lo/ſ;->দ:I

    .line 73
    :cond_1
    return-void
.end method

.method public ᴵ(Z)V
    .locals 2

    .line 76
    iget-boolean v0, p0, Lo/ſ;->র:Z

    if-ne p1, v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Lo/ſ;->র:Z

    .line 80
    iget-boolean v0, p0, Lo/ſ;->হ:Z

    if-eqz v0, :cond_6

    .line 81
    if-eqz p1, :cond_3

    .line 82
    iget v0, p0, Lo/ſ;->ー:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/ſ;->ー:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lo/ſ;->প:I

    :goto_0
    iput v0, p0, Lo/ſ;->চ:I

    .line 83
    iget v0, p0, Lo/ſ;->ন:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    iget v0, p0, Lo/ſ;->ন:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lo/ſ;->য:I

    :goto_1
    iput v0, p0, Lo/ſ;->দ:I

    goto :goto_4

    .line 85
    :cond_3
    iget v0, p0, Lo/ſ;->ন:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_4

    iget v0, p0, Lo/ſ;->ন:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lo/ſ;->প:I

    :goto_2
    iput v0, p0, Lo/ſ;->চ:I

    .line 86
    iget v0, p0, Lo/ſ;->ー:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_5

    iget v0, p0, Lo/ſ;->ー:I

    goto :goto_3

    :cond_5
    iget v0, p0, Lo/ſ;->য:I

    :goto_3
    iput v0, p0, Lo/ſ;->দ:I

    goto :goto_4

    .line 89
    :cond_6
    iget v0, p0, Lo/ſ;->প:I

    iput v0, p0, Lo/ſ;->চ:I

    .line 90
    iget v0, p0, Lo/ſ;->য:I

    iput v0, p0, Lo/ſ;->দ:I

    .line 92
    :goto_4
    return-void
.end method
