.class final Lcom/localytics/android/MarketingCondition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingCondition$1;,
        Lcom/localytics/android/MarketingCondition$Opt;
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mOpt:Lcom/localytics/android/MarketingCondition$Opt;

.field private mPkgName:Ljava/lang/String;

.field private final mValues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector<Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingCondition;->stringToOperator(Ljava/lang/String;)Lcom/localytics/android/MarketingCondition$Opt;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    .line 33
    iput-object p3, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    .line 34
    return-void
.end method

.method private isSatisfiedByNumber(Ljava/lang/String;)Z
    .locals 9

    .line 171
    const/4 v3, 0x0

    .line 174
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    .line 176
    iget-object v0, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 178
    :goto_0
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    iget-object v1, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 181
    :pswitch_0
    if-nez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 182
    :goto_1
    goto/16 :goto_9

    .line 184
    :pswitch_1
    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 185
    :goto_2
    goto/16 :goto_9

    .line 187
    :pswitch_2
    if-lez v5, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 188
    :goto_3
    goto :goto_9

    .line 190
    :pswitch_3
    if-ltz v5, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 191
    :goto_4
    goto :goto_9

    .line 193
    :pswitch_4
    if-gez v5, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 194
    :goto_5
    goto :goto_9

    .line 196
    :pswitch_5
    if-gtz v5, :cond_6

    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 197
    :goto_6
    goto :goto_9

    .line 199
    :pswitch_6
    if-ltz v5, :cond_7

    if-gtz v6, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    .line 200
    :goto_7
    goto :goto_9

    .line 202
    :pswitch_7
    iget-object v0, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 204
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_8

    .line 206
    const/4 v3, 0x1

    .line 207
    goto :goto_9

    .line 209
    :cond_8
    goto :goto_8

    .line 210
    .line 214
    :cond_9
    :goto_9
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isSatisfiedByString(Ljava/lang/String;)Z
    .locals 5

    .line 134
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    iget-object v1, p0, Lcom/localytics/android/MarketingCondition;->mOpt:Lcom/localytics/android/MarketingCondition$Opt;

    invoke-virtual {v1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    goto :goto_4

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 143
    :goto_0
    goto :goto_4

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/localytics/android/MarketingCondition;->mValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 147
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v2, 0x1

    .line 150
    goto :goto_2

    .line 152
    :cond_1
    goto :goto_1

    .line 153
    :cond_2
    :goto_2
    goto :goto_4

    .line 163
    :goto_3
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByNumber(Ljava/lang/String;)Z

    move-result v2

    .line 166
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private operatorToString(Lcom/localytics/android/MarketingCondition$Opt;)Ljava/lang/String;
    .locals 2

    .line 220
    sget-object v0, Lcom/localytics/android/MarketingCondition$1;->$SwitchMap$com$localytics$android$MarketingCondition$Opt:[I

    invoke-virtual {p1}, Lcom/localytics/android/MarketingCondition$Opt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    const-string v0, "is equal to"

    return-object v0

    .line 225
    :pswitch_1
    const-string v0, "not equal to"

    return-object v0

    .line 227
    :pswitch_2
    const-string v0, "is greater than"

    return-object v0

    .line 229
    :pswitch_3
    const-string v0, "is greater than or equal to"

    return-object v0

    .line 231
    :pswitch_4
    const-string v0, "is less than"

    return-object v0

    .line 233
    :pswitch_5
    const-string v0, "is less than or equal to"

    return-object v0

    .line 235
    :pswitch_6
    const-string v0, "is in between values"

    return-object v0

    .line 237
    :pswitch_7
    const-string v0, "is a member of the list"

    return-object v0

    .line 240
    :goto_0
    :pswitch_8
    const-string v0, "INVALID OPERATOR"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private stringToOperator(Ljava/lang/String;)Lcom/localytics/android/MarketingCondition$Opt;
    .locals 1

    .line 38
    const-string v0, "eq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 43
    :cond_0
    const-string v0, "neq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->NOT_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 48
    :cond_1
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 53
    :cond_2
    const-string v0, "gte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->GREATER_THEN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 58
    :cond_3
    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 63
    :cond_4
    const-string v0, "lte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->LESS_THAN_OR_EQUAL:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 68
    :cond_5
    const-string v0, "btw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->BETWEEN:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 73
    :cond_6
    const-string v0, "in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->IN_LIST:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0

    .line 78
    :cond_7
    sget-object v0, Lcom/localytics/android/MarketingCondition$Opt;->INVALID:Lcom/localytics/android/MarketingCondition$Opt;

    return-object v0
.end method


# virtual methods
.method isSatisfiedByAttributes(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Z"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    if-ne v0, p1, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    const/4 v0, 0x0

    if-ne v0, v4, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/localytics/android/MarketingCondition;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    :cond_1
    const/4 v0, 0x0

    if-ne v0, v4, :cond_2

    .line 109
    const-string v0, "Could not find the in-app condition %s in the attributes dictionary."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/MarketingCondition;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_2
    const/4 v5, 0x0

    .line 116
    instance-of v0, v4, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 118
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByString(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 120
    :cond_3
    instance-of v0, v4, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 122
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/localytics/android/MarketingCondition;->isSatisfiedByNumber(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 126
    :cond_4
    const-string v0, "Invalid value type %s in the attributes dictionary."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 129
    :goto_0
    return v5
.end method

.method setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/localytics/android/MarketingCondition;->mPkgName:Ljava/lang/String;

    .line 84
    return-void
.end method
