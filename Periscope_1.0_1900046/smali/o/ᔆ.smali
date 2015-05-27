.class Lo/ᔆ;
.super Lo/ﭠ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ᘆ:Z

.field private ᴋ:I

.field final synthetic ᴹ:Lo/ᓑ;


# direct methods
.method constructor <init>(Lo/ᓑ;)V
    .locals 1

    .line 108
    iput-object p1, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-direct {p0}, Lo/ﭠ;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᔆ;->ᘆ:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lo/ᔆ;->ᴋ:I

    return-void
.end method


# virtual methods
.method public ᵢ(Landroid/view/View;)V
    .locals 2

    .line 114
    iget-boolean v0, p0, Lo/ᔆ;->ᘆ:Z

    if-eqz v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᔆ;->ᘆ:Z

    .line 118
    iget-object v0, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-static {v0}, Lo/ᓑ;->ˊ(Lo/ᓑ;)Lo/ﭔ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-static {v0}, Lo/ᓑ;->ˊ(Lo/ᓑ;)Lo/ﭔ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ﭔ;->ᵢ(Landroid/view/View;)V

    .line 121
    :cond_1
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 131
    iget v0, p0, Lo/ᔆ;->ᴋ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᔆ;->ᴋ:I

    iget-object v1, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-static {v1}, Lo/ᓑ;->ˎ(Lo/ᓑ;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-static {v0}, Lo/ᓑ;->ˊ(Lo/ᓑ;)Lo/ﭔ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-static {v0}, Lo/ᓑ;->ˊ(Lo/ᓑ;)Lo/ﭔ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/ﭔ;->ⁱ(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lo/ᔆ;->ﻧ()V

    .line 137
    :cond_1
    return-void
.end method

.method ﻧ()V
    .locals 1

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lo/ᔆ;->ᴋ:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᔆ;->ᘆ:Z

    .line 126
    iget-object v0, p0, Lo/ᔆ;->ᴹ:Lo/ᓑ;

    invoke-static {v0}, Lo/ᓑ;->ˋ(Lo/ᓑ;)V

    .line 127
    return-void
.end method
