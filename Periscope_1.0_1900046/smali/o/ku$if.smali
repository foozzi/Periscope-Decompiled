.class Lo/ku$if;
.super Lo/lq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic OA:Lo/ku;

.field private OE:Lo/ki;


# direct methods
.method constructor <init>(Lo/ku;ILo/ki;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/ku$if;->OA:Lo/ku;

    .line 137
    invoke-direct {p0, p2}, Lo/lq;-><init>(I)V

    .line 138
    iput-object p3, p0, Lo/ku$if;->OE:Lo/ki;

    .line 139
    return-void
.end method

.method static synthetic ˊ(Lo/ku$if;)Lo/ki;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/ku$if;->OE:Lo/ki;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 143
    iget-object v0, p0, Lo/ku$if;->OA:Lo/ku;

    invoke-virtual {v0}, Lo/ku;->ax()[Ljava/lang/String;

    move-result-object v2

    .line 144
    if-nez v2, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lo/ku$if;->OA:Lo/ku;

    iget-object v0, v0, Lo/ku;->NW:Ljava/util/Hashtable;

    invoke-static {v0}, Lo/li;->ʽ(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v3

    .line 149
    const-string v0, "uuid"

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "uuid"

    iget-object v1, p0, Lo/ku$if;->OA:Lo/ku;

    iget-object v1, v1, Lo/ku;->UUID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    iget-object v0, p0, Lo/ku$if;->OA:Lo/ku;

    invoke-static {v0}, Lo/ku;->ˊ(Lo/ku;)Ljava/lang/String;

    move-result-object v4

    .line 153
    if-eqz v4, :cond_2

    const-string v0, "state"

    invoke-virtual {v3, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    iget-object v0, p0, Lo/ku$if;->OA:Lo/ku;

    invoke-static {v0}, Lo/ku;->ˋ(Lo/ku;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lo/ku$if;->OA:Lo/ku;

    invoke-static {v0}, Lo/ku;->ˋ(Lo/ku;)I

    move-result v0

    const/16 v1, 0x140

    if-ge v0, v1, :cond_3

    const-string v0, "heartbeat"

    iget-object v1, p0, Lo/ku$if;->OA:Lo/ku;

    invoke-static {v1}, Lo/ku;->ˋ(Lo/ku;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_3
    new-instance v5, Lo/kn;

    new-instance v0, Lo/lc;

    invoke-direct {v0, p0}, Lo/lc;-><init>(Lo/ku$if;)V

    invoke-direct {v5, v2, v3, v0}, Lo/kn;-><init>([Ljava/lang/String;Ljava/util/Hashtable;Lo/ll;)V

    .line 184
    iget-object v0, p0, Lo/ku$if;->OA:Lo/ku;

    iget-object v1, p0, Lo/ku$if;->OA:Lo/ku;

    iget-object v1, v1, Lo/ku;->Oq:Lo/kr;

    invoke-virtual {v0, v5, v1}, Lo/ku;->ˊ(Lo/kn;Lo/lk;)V

    .line 186
    return-void
.end method
