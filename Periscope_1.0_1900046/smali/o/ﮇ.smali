.class public abstract Lo/ﮇ;
.super Lo/ἲ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﮇ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Landroid/view/View;Z:Ljava/lang/Object;>Lo/\u1f32<TZ;>;"
    }
.end annotation


# static fields
.field private static mR:Z

.field private static mS:Ljava/lang/Integer;


# instance fields
.field private final mT:Lo/ﮇ$if;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lo/ﮇ;->mR:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lo/ﮇ;->mS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lo/ἲ;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "View must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lo/ﮇ;->view:Landroid/view/View;

    .line 79
    new-instance v0, Lo/ﮇ$if;

    invoke-direct {v0, p1}, Lo/ﮇ$if;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lo/ﮇ;->mT:Lo/ﮇ$if;

    .line 80
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 2

    .line 149
    sget-object v0, Lo/ﮇ;->mS:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lo/ﮇ;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lo/ﮇ;->view:Landroid/view/View;

    sget-object v1, Lo/ﮇ;->mS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 2

    .line 140
    sget-object v0, Lo/ﮇ;->mS:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lo/ﮇ;->mR:Z

    .line 142
    iget-object v0, p0, Lo/ﮇ;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lo/ﮇ;->view:Landroid/view/View;

    sget-object v1, Lo/ﮇ;->mS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 146
    :goto_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lo/ﮇ;->view:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ﮇ;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lo/ᔨ;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lo/ﮇ;->setTag(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public ˊ(Lo/丿;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/ﮇ;->mT:Lo/ﮇ$if;

    invoke-virtual {v0, p1}, Lo/ﮇ$if;->ˊ(Lo/丿;)V

    .line 101
    return-void
.end method

.method public ṝ()Lo/ᔨ;
    .locals 4

    .line 127
    invoke-direct {p0}, Lo/ﮇ;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v2, :cond_1

    .line 130
    instance-of v0, v2, Lo/ᔨ;

    if-eqz v0, :cond_0

    .line 131
    move-object v0, v2

    check-cast v0, Lo/ᔨ;

    move-object v3, v0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    :goto_0
    return-object v3
.end method
