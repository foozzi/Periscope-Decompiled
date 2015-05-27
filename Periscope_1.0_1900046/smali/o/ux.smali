.class final Lo/ux;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ZY:Z

.field ZZ:Z

.field aaa:Lo/ux;

.field aab:Lo/ux;

.field final fw:[B

.field limit:I

.field pos:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ux;->fw:[B

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ux;->ZZ:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ux;->ZY:Z

    .line 61
    return-void
.end method

.method constructor <init>(Lo/ux;)V
    .locals 3

    .line 64
    iget-object v0, p1, Lo/ux;->fw:[B

    iget v1, p1, Lo/ux;->pos:I

    iget v2, p1, Lo/ux;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lo/ux;-><init>([BII)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/ux;->ZY:Z

    .line 66
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/ux;->fw:[B

    .line 70
    iput p2, p0, Lo/ux;->pos:I

    .line 71
    iput p3, p0, Lo/ux;->limit:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ux;->ZZ:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ux;->ZY:Z

    .line 74
    return-void
.end method


# virtual methods
.method public et()Lo/ux;
    .locals 3

    .line 81
    iget-object v0, p0, Lo/ux;->aaa:Lo/ux;

    if-eq v0, p0, :cond_0

    iget-object v2, p0, Lo/ux;->aaa:Lo/ux;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 82
    :goto_0
    iget-object v0, p0, Lo/ux;->aab:Lo/ux;

    iget-object v1, p0, Lo/ux;->aaa:Lo/ux;

    iput-object v1, v0, Lo/ux;->aaa:Lo/ux;

    .line 83
    iget-object v0, p0, Lo/ux;->aaa:Lo/ux;

    iget-object v1, p0, Lo/ux;->aab:Lo/ux;

    iput-object v1, v0, Lo/ux;->aab:Lo/ux;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ux;->aaa:Lo/ux;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ux;->aab:Lo/ux;

    .line 86
    return-object v2
.end method

.method public eu()V
    .locals 4

    .line 123
    iget-object v0, p0, Lo/ux;->aab:Lo/ux;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lo/ux;->aab:Lo/ux;

    iget-boolean v0, v0, Lo/ux;->ZZ:Z

    if-nez v0, :cond_1

    return-void

    .line 125
    :cond_1
    iget v0, p0, Lo/ux;->limit:I

    iget v1, p0, Lo/ux;->pos:I

    sub-int v2, v0, v1

    .line 126
    iget-object v0, p0, Lo/ux;->aab:Lo/ux;

    iget v0, v0, Lo/ux;->limit:I

    rsub-int v0, v0, 0x800

    iget-object v1, p0, Lo/ux;->aab:Lo/ux;

    iget-boolean v1, v1, Lo/ux;->ZY:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lo/ux;->aab:Lo/ux;

    iget v1, v1, Lo/ux;->pos:I

    :goto_0
    add-int v3, v0, v1

    .line 127
    if-le v2, v3, :cond_3

    return-void

    .line 128
    :cond_3
    iget-object v0, p0, Lo/ux;->aab:Lo/ux;

    invoke-virtual {p0, v0, v2}, Lo/ux;->ˊ(Lo/ux;I)V

    .line 129
    invoke-virtual {p0}, Lo/ux;->et()Lo/ux;

    .line 130
    invoke-static {p0}, Lo/uy;->ˋ(Lo/ux;)V

    .line 131
    return-void
.end method

.method public ɺ(I)Lo/ux;
    .locals 3

    .line 110
    if-lez p1, :cond_0

    iget v0, p0, Lo/ux;->limit:I

    iget v1, p0, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_1
    new-instance v2, Lo/ux;

    invoke-direct {v2, p0}, Lo/ux;-><init>(Lo/ux;)V

    .line 112
    iget v0, v2, Lo/ux;->pos:I

    add-int/2addr v0, p1

    iput v0, v2, Lo/ux;->limit:I

    .line 113
    iget v0, p0, Lo/ux;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/ux;->pos:I

    .line 114
    iget-object v0, p0, Lo/ux;->aab:Lo/ux;

    invoke-virtual {v0, v2}, Lo/ux;->ˊ(Lo/ux;)Lo/ux;

    .line 115
    return-object v2
.end method

.method public ˊ(Lo/ux;)Lo/ux;
    .locals 1

    .line 94
    iput-object p0, p1, Lo/ux;->aab:Lo/ux;

    .line 95
    iget-object v0, p0, Lo/ux;->aaa:Lo/ux;

    iput-object v0, p1, Lo/ux;->aaa:Lo/ux;

    .line 96
    iget-object v0, p0, Lo/ux;->aaa:Lo/ux;

    iput-object p1, v0, Lo/ux;->aab:Lo/ux;

    .line 97
    iput-object p1, p0, Lo/ux;->aaa:Lo/ux;

    .line 98
    return-object p1
.end method

.method public ˊ(Lo/ux;I)V
    .locals 5

    .line 135
    iget-boolean v0, p1, Lo/ux;->ZZ:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget v0, p1, Lo/ux;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x800

    if-le v0, v1, :cond_3

    .line 138
    iget-boolean v0, p1, Lo/ux;->ZY:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget v0, p1, Lo/ux;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x800

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :cond_2
    iget-object v0, p1, Lo/ux;->fw:[B

    iget v1, p1, Lo/ux;->pos:I

    iget-object v2, p1, Lo/ux;->fw:[B

    iget v3, p1, Lo/ux;->limit:I

    iget v4, p1, Lo/ux;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v0, p1, Lo/ux;->limit:I

    iget v1, p1, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lo/ux;->limit:I

    .line 142
    const/4 v0, 0x0

    iput v0, p1, Lo/ux;->pos:I

    .line 145
    :cond_3
    iget-object v0, p0, Lo/ux;->fw:[B

    iget v1, p0, Lo/ux;->pos:I

    iget-object v2, p1, Lo/ux;->fw:[B

    iget v3, p1, Lo/ux;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v0, p1, Lo/ux;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lo/ux;->limit:I

    .line 147
    iget v0, p0, Lo/ux;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lo/ux;->pos:I

    .line 148
    return-void
.end method
