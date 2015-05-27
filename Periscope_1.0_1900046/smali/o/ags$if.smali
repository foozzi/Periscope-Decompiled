.class Lo/ags$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field public bDY:I

.field public bDZ:I

.field public ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

.field public ე:Landroid/support/v7/widget/RecyclerView$ˑ;

.field public პ:I

.field public Ꮧ:I

.field public Ꮭ:I

.field public ᐱ:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 68
    iput-object p2, p0, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIIIII)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/ags$if;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 74
    iput p3, p0, Lo/ags$if;->პ:I

    .line 75
    iput p4, p0, Lo/ags$if;->Ꮧ:I

    .line 76
    iput p5, p0, Lo/ags$if;->Ꮭ:I

    .line 77
    iput p6, p0, Lo/ags$if;->ᐱ:I

    .line 78
    iput p7, p0, Lo/ags$if;->bDY:I

    .line 79
    iput p8, p0, Lo/ags$if;->bDZ:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIIIIILo/agt;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p8}, Lo/ags$if;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIIIII)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ags$if;->ງ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ags$if;->ე:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ags$if;->პ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ags$if;->Ꮧ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ags$if;->bDY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ags$if;->Ꮭ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ags$if;->ᐱ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/ags$if;->bDZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
