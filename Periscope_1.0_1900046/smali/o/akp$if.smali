.class Lo/akp$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/akp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field private bJc:[D

.field final synthetic bJd:Lo/akp;

.field private count:I

.field private final uU:I


# direct methods
.method public constructor <init>(Lo/akp;I)V
    .locals 1

    .line 181
    iput-object p1, p0, Lo/akp$if;->bJd:Lo/akp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lo/akp$if;->uU:I

    .line 183
    iget v0, p0, Lo/akp$if;->uU:I

    new-array v0, v0, [D

    iput-object v0, p0, Lo/akp$if;->bJc:[D

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lo/akp$if;->count:I

    .line 185
    return-void
.end method


# virtual methods
.method public AL()D
    .locals 5

    .line 194
    const-wide/16 v2, 0x0

    .line 195
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lo/akp$if;->uU:I

    if-ge v4, v0, :cond_1

    .line 197
    iget-object v0, p0, Lo/akp$if;->bJc:[D

    aget-wide v0, v0, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/akp$if;->bJc:[D

    aget-wide v2, v0, v4

    .line 195
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-wide v2
.end method

.method public ᐝ(D)V
    .locals 3

    .line 188
    iget v0, p0, Lo/akp$if;->count:I

    iget v1, p0, Lo/akp$if;->uU:I

    rem-int v2, v0, v1

    .line 189
    iget-object v0, p0, Lo/akp$if;->bJc:[D

    aput-wide p1, v0, v2

    .line 190
    iget v0, p0, Lo/akp$if;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/akp$if;->count:I

    .line 191
    return-void
.end method
