.class final Lo/ċ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ċ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final jL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Lo/\u010b$if<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private eb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lo/ċ$if;->jL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ʻ(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lo/ċ$if;->eb:Ljava/lang/Object;

    .line 86
    iput p2, p0, Lo/ċ$if;->width:I

    .line 87
    iput p3, p0, Lo/ċ$if;->height:I

    .line 88
    return-void
.end method

.method static ᐝ(Ljava/lang/Object;II)Lo/ċ$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:Ljava/lang/Object;>(TA;II)Lo/\u010b$if<TA;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lo/ċ$if;->jL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ċ$if;

    move-object v1, v0

    .line 74
    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lo/ċ$if;

    invoke-direct {v1}, Lo/ċ$if;-><init>()V

    .line 78
    :cond_0
    invoke-direct {v1, p0, p1, p2}, Lo/ċ$if;->ʻ(Ljava/lang/Object;II)V

    .line 79
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 96
    instance-of v0, p1, Lo/ċ$if;

    if-eqz v0, :cond_1

    .line 97
    move-object v0, p1

    check-cast v0, Lo/ċ$if;

    move-object v2, v0

    .line 98
    iget v0, p0, Lo/ċ$if;->width:I

    iget v1, v2, Lo/ċ$if;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/ċ$if;->height:I

    iget v1, v2, Lo/ċ$if;->height:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ċ$if;->eb:Ljava/lang/Object;

    iget-object v1, v2, Lo/ċ$if;->eb:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v2, p0, Lo/ċ$if;->height:I

    .line 106
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lo/ċ$if;->width:I

    add-int v2, v0, v1

    .line 107
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lo/ċ$if;->eb:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 108
    return v2
.end method

.method public release()V
    .locals 1

    .line 91
    sget-object v0, Lo/ċ$if;->jL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
