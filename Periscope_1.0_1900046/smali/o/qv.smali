.class Lo/qv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/qu$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Ww:Z

.field final synthetic Wx:Ljava/lang/StringBuilder;

.field final synthetic Wy:Lo/qu;


# direct methods
.method constructor <init>(Lo/qu;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 546
    iput-object p1, p0, Lo/qv;->Wy:Lo/qu;

    iput-object p2, p0, Lo/qv;->Wx:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/qv;->Ww:Z

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/io/InputStream;I)V
    .locals 2

    .line 551
    iget-boolean v0, p0, Lo/qv;->Ww:Z

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/qv;->Ww:Z

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lo/qv;->Wx:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :goto_0
    iget-object v0, p0, Lo/qv;->Wx:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    return-void
.end method
