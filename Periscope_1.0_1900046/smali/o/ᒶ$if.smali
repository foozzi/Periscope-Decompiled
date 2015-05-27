.class public final Lo/ᒶ$if;
.super Lo/ᒶ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒶ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final wf:J

.field public final wg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u14b6$\u02ca;>;"
        }
    .end annotation
.end field

.field public final wh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u14b6$if;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Lo/ᒶ;-><init>(I)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᒶ$if;->wg:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᒶ$if;->wh:Ljava/util/List;

    .line 127
    iput-wide p2, p0, Lo/ᒶ$if;->wf:J

    .line 128
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lo/ᒶ$if;->type:I

    invoke-static {v1}, Lo/ᒶ$if;->ہ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leaves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ᒶ$if;->wg:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lo/ᒶ$ˊ;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " containers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ᒶ$if;->wh:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lo/ᒶ$if;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ᒶ$if;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/ᒶ$if;->wh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public ˊ(Lo/ᒶ$ˊ;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/ᒶ$if;->wg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public ܝ(I)Lo/ᒶ$ˊ;
    .locals 4

    .line 139
    iget-object v0, p0, Lo/ᒶ$if;->wg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 140
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 141
    iget-object v0, p0, Lo/ᒶ$if;->wg:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$ˊ;

    move-object v3, v0

    .line 142
    iget v0, v3, Lo/ᒶ$ˊ;->type:I

    if-ne v0, p1, :cond_0

    .line 143
    return-object v3

    .line 140
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public า(I)Lo/ᒶ$if;
    .locals 4

    .line 150
    iget-object v0, p0, Lo/ᒶ$if;->wh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 151
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 152
    iget-object v0, p0, Lo/ᒶ$if;->wh:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒶ$if;

    move-object v3, v0

    .line 153
    iget v0, v3, Lo/ᒶ$if;->type:I

    if-ne v0, p1, :cond_0

    .line 154
    return-object v3

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
