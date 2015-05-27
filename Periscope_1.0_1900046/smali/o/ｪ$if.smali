.class Lo/ｪ$if;
.super Lo/〱;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ｪ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u3031<Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final index:I

.field private final la:J

.field private lb:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lo/〱;-><init>()V

    .line 153
    iput-object p1, p0, Lo/ｪ$if;->handler:Landroid/os/Handler;

    .line 154
    iput p2, p0, Lo/ｪ$if;->index:I

    .line 155
    iput-wide p3, p0, Lo/ｪ$if;->la:J

    .line 156
    return-void
.end method

.method static synthetic ˋ(Lo/ｪ$if;)I
    .locals 1

    .line 146
    iget v0, p0, Lo/ｪ$if;->index:I

    return v0
.end method


# virtual methods
.method public ˊ(Landroid/graphics/Bitmap;Lo/ḟ;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/graphics/Bitmap;Lo/\u1e1f<-Landroid/graphics/Bitmap;>;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lo/ｪ$if;->lb:Landroid/graphics/Bitmap;

    .line 165
    iget-object v0, p0, Lo/ｪ$if;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 166
    iget-object v0, p0, Lo/ｪ$if;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lo/ｪ$if;->la:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Lo/ḟ;)V
    .locals 1

    .line 146
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p2}, Lo/ｪ$if;->ˊ(Landroid/graphics/Bitmap;Lo/ḟ;)V

    return-void
.end method

.method public ғ()Landroid/graphics/Bitmap;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/ｪ$if;->lb:Landroid/graphics/Bitmap;

    return-object v0
.end method
