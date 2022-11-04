Test the I2C accelerometer on a MicroBit v1.3b.

Trying to reproduce [Issue #393](https://github.com/AdaCore/Ada_Drivers_Library/issues/393)

[Decoded I2C trace](traces/trace.txt)

# State running Python demo
```
(gdb) print twi_0.periph.all
$5 = (tasks_startrx => 536887296, tasks_starttx => 101557, tasks_stop => 0, tasks_suspend => 0, tasks_resume => 0, events_stopped => 230776, events_rxdready => 43131456, 
  events_txdsent => 4160702109, events_error => 1175406219, events_bb => 1259161496, events_suspended => 1208811533, shorts => (bb_suspend => disabled, bb_stop => disabled, 
    reserved_2_31 => 405981376), intenset => (reserved_0_0 => 1, stopped => set, rxdready => set, reserved_3_6 => 2, txdsent => set, reserved_8_8 => 1, error => intenset_error_field_reset, 
    reserved_10_13 => 14, bb => set, reserved_15_17 => 5, suspended => intenset_suspended_field_reset, reserved_19_31 => 0), intenclr => (reserved_0_0 => 0, stopped => clear, 
    rxdready => intenclr_rxdready_field_reset, reserved_3_6 => 3, txdsent => clear, reserved_8_8 => 1, error => intenclr_error_field_reset, reserved_10_13 => 14, bb => clear, 
    reserved_15_17 => 5, suspended => intenclr_suspended_field_reset, reserved_19_31 => 0), errorsrc => (overrun => errorsrc_overrun_field_reset, anack => clear, 
    dnack => errorsrc_dnack_field_reset, reserved_3_31 => 524410368), enable => (enable => 2, reserved_3_31 => 527375872), pselscl => 3624813219, pselsda => 620757033, rxd => (rxd => 5, 
    reserved_8_31 => 4369307), txd => (txd => 33, reserved_8_31 => 12504), frequency => 2953707253, address => (address => 107, reserved_7_31 => 20320244), power => (power => enabled, 
    reserved_1_31 => 563027357))
(gdb) print twi_1.periph.all
$6 = (tasks_startrx => 536887296, tasks_starttx => 101557, tasks_stop => 0, tasks_suspend => 0, tasks_resume => 0, events_stopped => 230776, events_rxdready => 43131456, 
  events_txdsent => 4160702109, events_error => 1175406219, events_bb => 1259161496, events_suspended => 1208811533, shorts => (bb_suspend => disabled, bb_stop => disabled, 
    reserved_2_31 => 405981376), intenset => (reserved_0_0 => 1, stopped => set, rxdready => set, reserved_3_6 => 2, txdsent => set, reserved_8_8 => 1, error => intenset_error_field_reset, 
    reserved_10_13 => 14, bb => set, reserved_15_17 => 5, suspended => intenset_suspended_field_reset, reserved_19_31 => 0), intenclr => (reserved_0_0 => 0, stopped => clear, 
    rxdready => intenclr_rxdready_field_reset, reserved_3_6 => 3, txdsent => clear, reserved_8_8 => 1, error => intenclr_error_field_reset, reserved_10_13 => 14, bb => clear, 
    reserved_15_17 => 5, suspended => intenclr_suspended_field_reset, reserved_19_31 => 0), errorsrc => (overrun => errorsrc_overrun_field_reset, anack => clear, 
    dnack => errorsrc_dnack_field_reset, reserved_3_31 => 524410368), enable => (enable => 2, reserved_3_31 => 527375872), pselscl => 3624813219, pselsda => 620757033, rxd => (rxd => 5, 
    reserved_8_31 => 4369307), txd => (txd => 33, reserved_8_31 => 12504), frequency => 2953707253, address => (address => 107, reserved_7_31 => 20320244), power => (power => enabled, 
    reserved_1_31 => 563027357))
```

# State running Ada demo
```
(gdb) print twi_0.periph.all
$1 = (tasks_startrx => 0, tasks_starttx => 0, tasks_stop => 0, tasks_suspend => 0, tasks_resume => 0, events_stopped => 1, events_rxdready => 0, events_txdsent => 0, events_error => 0, 
  events_bb => 1, events_suspended => 1, shorts => (bb_suspend => disabled, bb_stop => enabled, reserved_2_31 => 0), intenset => (reserved_0_0 => 0, stopped => intenset_stopped_field_reset, 
    rxdready => intenset_rxdready_field_reset, reserved_3_6 => 0, txdsent => intenset_txdsent_field_reset, reserved_8_8 => 0, error => intenset_error_field_reset, reserved_10_13 => 0, 
    bb => intenset_bb_field_reset, reserved_15_17 => 0, suspended => intenset_suspended_field_reset, reserved_19_31 => 0), intenclr => (reserved_0_0 => 0, 
    stopped => intenclr_stopped_field_reset, rxdready => intenclr_rxdready_field_reset, reserved_3_6 => 0, txdsent => intenclr_txdsent_field_reset, reserved_8_8 => 0, 
    error => intenclr_error_field_reset, reserved_10_13 => 0, bb => intenclr_bb_field_reset, reserved_15_17 => 0, suspended => intenclr_suspended_field_reset, reserved_19_31 => 0), 
  errorsrc => (overrun => errorsrc_overrun_field_reset, anack => errorsrc_anack_field_reset, dnack => errorsrc_dnack_field_reset, reserved_3_31 => 0), enable => (enable => enabled, 
    reserved_3_31 => 0), pselscl => 0, pselsda => 30, rxd => (rxd => 0, reserved_8_31 => 0), txd => (txd => 0, reserved_8_31 => 0), frequency => 107479040, address => (address => 29, 
    reserved_7_31 => 0), power => (power => enabled, reserved_1_31 => 0))
(gdb) print twi_1.periph.all
$2 = (tasks_startrx => 0, tasks_starttx => 0, tasks_stop => 0, tasks_suspend => 0, tasks_resume => 0, events_stopped => 0, events_rxdready => 0, events_txdsent => 0, events_error => 0, 
  events_bb => 0, events_suspended => 0, shorts => (bb_suspend => disabled, bb_stop => disabled, reserved_2_31 => 0), intenset => (reserved_0_0 => 0, stopped => intenset_stopped_field_reset, 
    rxdready => intenset_rxdready_field_reset, reserved_3_6 => 0, txdsent => intenset_txdsent_field_reset, reserved_8_8 => 0, error => intenset_error_field_reset, reserved_10_13 => 0, 
    bb => intenset_bb_field_reset, reserved_15_17 => 0, suspended => intenset_suspended_field_reset, reserved_19_31 => 0), intenclr => (reserved_0_0 => 0, 
    stopped => intenclr_stopped_field_reset, rxdready => intenclr_rxdready_field_reset, reserved_3_6 => 0, txdsent => intenclr_txdsent_field_reset, reserved_8_8 => 0, 
    error => intenclr_error_field_reset, reserved_10_13 => 0, bb => intenclr_bb_field_reset, reserved_15_17 => 0, suspended => intenclr_suspended_field_reset, reserved_19_31 => 0), 
  errorsrc => (overrun => errorsrc_overrun_field_reset, anack => errorsrc_anack_field_reset, dnack => errorsrc_dnack_field_reset, reserved_3_31 => 0), enable => (enable => disabled, 
    reserved_3_31 => 0), pselscl => 4294967295, pselsda => 4294967295, rxd => (rxd => 0, reserved_8_31 => 0), txd => (txd => 0, reserved_8_31 => 0), frequency => 67108864, address => (
    address => 0, reserved_7_31 => 0), power => (power => enabled, reserved_1_31 => 0))
```
