.class final Lo/pe;
.super Ljava/lang/Object;
.source ""


# instance fields
.field volatile UA:Z

.field final Uy:Ljava/lang/Object;

.field final Uz:Lo/pc;

.field final priority:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/pc;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/pe;->Uy:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lo/pe;->Uz:Lo/pc;

    .line 31
    iput p3, p0, Lo/pe;->priority:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/pe;->UA:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 37
    instance-of v0, p1, Lo/pe;

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p1

    check-cast v0, Lo/pe;

    move-object v2, v0

    .line 39
    iget-object v0, p0, Lo/pe;->Uy:Ljava/lang/Object;

    iget-object v1, v2, Lo/pe;->Uy:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/pe;->Uz:Lo/pc;

    iget-object v1, v2, Lo/pe;->Uz:Lo/pc;

    invoke-virtual {v0, v1}, Lo/pc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 48
    iget-object v0, p0, Lo/pe;->Uy:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/pe;->Uz:Lo/pc;

    iget-object v1, v1, Lo/pc;->Uv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
